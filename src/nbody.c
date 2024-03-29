//
#include <omp.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>

//
typedef float              f32;
typedef double             f64;
typedef unsigned long long u64;

//
typedef struct particle_s {

  f32 x, y, z;
  f32 vx, vy, vz;
  
} particle_t;

//generate initial positions and velocities
void init(particle_t *p, u64 n)
{
  for (u64 i = 0; i < n; i++)
    {
      //
      u64 r1 = (u64)rand();
      u64 r2 = (u64)rand();
      f32 sign = (r1 > r2) ? 1 : -1;
      
      //
      p[i].x = sign * (f32)rand() / (f32)RAND_MAX;
      p[i].y = (f32)rand() / (f32)RAND_MAX;
      p[i].z = sign * (f32)rand() / (f32)RAND_MAX;

      //
      p[i].vx = (f32)rand() / (f32)RAND_MAX;
      p[i].vy = sign * (f32)rand() / (f32)RAND_MAX;
      p[i].vz = (f32)rand() / (f32)RAND_MAX;
    }
}

//
void move_particles(particle_t *p, const f32 dt, u64 n)
{
  //Used to avoid division by 0 when comparing a particle to itself
  const f32 softening = 1e-20;
  
  //For all particles
  for (u64 i = 0; i < n; i++)
    {
      //
      f32 fx = 0.0;
      f32 fy = 0.0;
      f32 fz = 0.0;

      //Newton's law: 17 FLOPs (Floating-Point Operations) per iteration
      for (u64 j = 0; j < n; j++)
	{ 
	  //3 FLOPs (Floating-Point Operations) 
	  const f32 dx = p[j].x - p[i].x; //1 (sub)
	  const f32 dy = p[j].y - p[i].y; //2 (sub)
	  const f32 dz = p[j].z - p[i].z; //3 (sub)

	  //Compute the distance between particle i and j: 6 FLOPs
	  const f32 d_2 = (dx * dx) + (dy * dy) + (dz * dz) + softening; //9 (mul, add)

	  //2 FLOPs (here, we consider pow to be 1 operation)
	  const f32 d_3_over_2 = pow(d_2, 3.0 / 2.0); //11 (pow, div)
	  
	  //Calculate net force: 6 FLOPs
	  fx += dx / d_3_over_2; //13 (add, div)
	  fy += dy / d_3_over_2; //15 (add, div)
	  fz += dz / d_3_over_2; //17 (add, div)
	}

      //Update particle velocities using the previously computed net force: 6 FLOPs 
      p[i].vx += dt * fx; //19 (mul, add)
      p[i].vy += dt * fy; //21 (mul, add)
      p[i].vz += dt * fz; //23 (mul, add)
    }

  //Update positions: 6 FLOPs
  for (u64 i = 0; i < n; i++)
    {
      p[i].x += dt * p[i].vx;
      p[i].y += dt * p[i].vy;
      p[i].z += dt * p[i].vz;
    }
}

//
int main(int argc, char **argv)
{
  //Number of particles to simulate
  const u64 n = (argc > 1) ? atoll(argv[1]) : 16384;

  //Number of experiments
  const u64 steps= 13;

  //Time step
  const f32 dt = 0.01;

  //
  f64 rate = 0.0, drate = 0.0;

  //Steps to skip for warm up
  const u64 warmup = 3;
  
  //
  particle_t *p = malloc(sizeof(particle_t) * n);

  //
  init(p, n);

  //write initial conditions as reference
  FILE *init = fopen("../ref/init.txt", "w");
  if (init == NULL)
  {
    fprintf(stderr, "Error opening file init.txt\n");
    return 1;
  } 
  else
  {
    for (u64 i = 0; i < n; i ++)
    {
      fprintf(init, "%g\t%g\t%g\t%g\t%g\t%g\n", p[i].x, p[i].y, p[i].z, p[i].vx, p[i].vy, p[i].vz);
    }
  }
  fclose(init);

  const u64 s = sizeof(particle_t) * n;
  
  printf("\n\033[1mTotal memory size:\033[0m %llu B, %llu KiB, %llu MiB\n\n", s, s >> 10, s >> 20);
  
  //
  printf("\033[1m%5s %10s %10s %8s\033[0m\n", "Step", "Time, s", "Interact/s", "GFLOP/s"); fflush(stdout);
  
  //
  for (u64 i = 0; i < steps; i++)
    {
      //Measure
      const f64 start = omp_get_wtime();

      move_particles(p, dt, n);

      const f64 end = omp_get_wtime();

      //write particles' position and velocity information as reference
      FILE *ref = fopen("../ref/ref.txt", "w");
      if (ref == NULL)
      {
        fprintf(stderr, "Error opening file ref.txt\n");
        return 1;
      } 
      else
      {
        for (u64 i = 0; i < n; i ++)
        {
          fprintf(ref, "%g\t%g\t%g\t%g\t%g\t%g\n", p[i].x, p[i].y, p[i].z, p[i].vx, p[i].vy, p[i].vz);
        }
      }
      fclose(ref);

      //Number of interactions/iteration
      const f32 h1 = (f32)(n) * (f32)(n);

      //Number of GFLOPs
      //Innermost loop (Newton's law)   : 17 FLOPs x n (innermost trip count) x n (outermost trip count)
      //Velocity update (outermost body):  6 FLOPs x n (outermost trip count)
      //Positions update                :  6 FLOPs x n 
      const f32 h2 = (17.0 * h1 + 6.0 * (f32)n + 6.0 * (f32)n) * 1e-9;

      //Do not take warm up runs into account
      if (i >= warmup)
	{
	  rate += h2 / (f32)(end - start);
	  drate += (h2 * h2) / (f32)((end - start) * (end - start));
	}
      
      //
      printf("%5llu %10.3e %10.3e %8.1f %s\n",
	     i,
	     (end - start),
	     h1 / (end - start),
	     h2 / (end - start),
	     (i < warmup) ? "(warm up)" : "");
      
      fflush(stdout);
    }
  
  //Average GFLOPs/s
  rate /= (f64)(steps - warmup);

  //Deviation in GFLOPs/s
  drate = sqrt(drate / (f64)(steps - warmup) - (rate * rate));
  
  printf("-----------------------------------------------------\n");
  printf("\033[1m%s %4s \033[42m%10.1lf +- %.1lf GFLOP/s\033[0m\n",
	 "Average performance:", "", rate, drate);
  printf("-----------------------------------------------------\n");
    
  //
  free(p);

  //
  return 0;
}
