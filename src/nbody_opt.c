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

//use same initial conditions
void init(particle_t *p, u64 n)
{
    FILE *ref_init = fopen("../ref/init.txt", "r");
    if (ref_init == NULL)
    {
        fprintf(stderr, "Error opening file init.txt\n");
    }
    
    char line[150];
    u64 number = 0;
    while ((fgets(line, sizeof(line), ref_init) != NULL) && (number < n))
    {
        f32 temp1, temp2, temp3, temp4, temp5, temp6;
        if ((sscanf(line, "%f %*f %*f %*f %*f %*f", &temp1) == 1) && (sscanf(line, "%*f %f %*f %*f %*f %*f", &temp2) == 1) && (sscanf(line, "%*f %*f %f %*f %*f %*f", &temp3) == 1) 
            && (sscanf(line, "%*f %*f %*f %f %*f %*f", &temp4) == 1) && (sscanf(line, "%*f %*f %*f %*f %f %*f", &temp5) == 1) && (sscanf(line, "%*f %*f %*f %*f %*f %f", &temp6) == 1))
            {
                p[number].x = temp1;
                p[number].y = temp2;
                p[number].z = temp3;
                p[number].vx = temp4;
                p[number].vy = temp5;
                p[number].vz = temp6;
                number ++;
            }
        else
        {
            fprintf(stderr, "Error scanning file init.txt\n");
        }   
    }
    fclose(ref_init);
}

//enrolling by 4 and parallelizing the outer loop
void move_particles(particle_t *p, const f32 dt, u64 n)
{
    const f32 softening = 1e-20;
    #define UNROLL4 4

    #pragma omp parallel for
    for (u64 i = 0; i < n; i++)
    {
        f32 fx[UNROLL4] = {0.0};
        f32 fy[UNROLL4] = {0.0};
        f32 fz[UNROLL4] = {0.0};

        #pragma omp parallel for
        for (u64 j = 0; j < (n - (n % UNROLL4)); j += UNROLL4)
        {
            #pragma unroll
            for (int k = 0; k < UNROLL4; k++)
            {
                const f32 dx = p[j + k].x - p[i].x;
                const f32 dy = p[j + k].y - p[i].y;
                const f32 dz = p[j + k].z - p[i].z;

                const f32 d_2 = (dx * dx) + (dy * dy) + (dz * dz) + softening;
                const f32 d_3_over_2 = d_2 * sqrt(d_2);

                fx[k] += dx / d_3_over_2;
                fy[k] += dy / d_3_over_2;
                fz[k] += dz / d_3_over_2;
            }
        }

        #pragma omp simd reduction(+:fx,fy,fz)
        for (u64 j = (n - (n % UNROLL4)); j < n; j++)
        {
            const f32 dx = p[j].x - p[i].x;
            const f32 dy = p[j].y - p[i].y;
            const f32 dz = p[j].z - p[i].z;

            const f32 d_2 = (dx * dx) + (dy * dy) + (dz * dz) + softening;
            const f32 d_3_over_2 = d_2 * sqrt(d_2);

            fx[0] += dx / d_3_over_2;
            fy[0] += dy / d_3_over_2;
            fz[0] += dz / d_3_over_2;
        }

        #pragma omp critical
        {
            p[i].vx += dt * (fx[0] + fx[1] + fx[2] + fx[3]);
            p[i].vy += dt * (fy[0] + fy[1] + fy[2] + fy[3]);
            p[i].vz += dt * (fz[0] + fz[1] + fz[2] + fz[3]);
        }
    }

    #pragma omp parallel for
    for (u64 i = 0; i < n; i++)
    {
        p[i].x += dt * p[i].vx;
        p[i].y += dt * p[i].vy;
        p[i].z += dt * p[i].vz;
    }
}



f64 compute_delta_x(particle_t *p_ref, particle_t *p, u64 n)
{ 
    f64 delta = 0.0;
    for (u64 i = 0; i < n; i++)
	  {
      delta += (f64)p_ref[i].x - (f64)p[i].x;
    }  
    delta /= (f64)n;
    return delta;
}

f64 compute_delta_y(particle_t *p_ref, particle_t *p, u64 n)
{ 
    f64 delta = 0.0;
    for (u64 i = 0; i < n; i++)
	  {
      delta += (f64)p_ref[i].y - (f64)p[i].y;
    }  
    delta /= (f64)n;
    return delta;
}

f64 compute_delta_z(particle_t *p_ref, particle_t *p, u64 n)
{ 
    f64 delta = 0.0;
    for (u64 i = 0; i < n; i++)
	  {
      delta += (f64)p_ref[i].z - (f64)p[i].z;
    }  
    delta /= (f64)n;
    return delta;
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
  f64 delta_x = 0.0, delta_y = 0.0, delta_z = 0.0;
  f64 delta = 0.0;

  //Steps to skip for warm up
  const u64 warmup = 3;
  
  //
  particle_t *p = malloc(sizeof(particle_t) * n);
  particle_t *p_ref = malloc(sizeof(particle_t) * n);

  FILE *ref_result = fopen("../ref/ref.txt", "r");
    if (ref_result == NULL)
    {
        fprintf(stderr, "Error opening file ref.txt\n");
        return 1;
    }
    
    char line[150];
    u64 number = 0;
    while ((fgets(line, sizeof(line), ref_result) != NULL) && (number < n))
    {
        f32 temp1, temp2, temp3, temp4, temp5, temp6;
        if ((sscanf(line, "%f %*f %*f %*f %*f %*f", &temp1) == 1) && (sscanf(line, "%*f %f %*f %*f %*f %*f", &temp2) == 1) && (sscanf(line, "%*f %*f %f %*f %*f %*f", &temp3) == 1) 
            && (sscanf(line, "%*f %*f %*f %f %*f %*f", &temp4) == 1) && (sscanf(line, "%*f %*f %*f %*f %f %*f", &temp5) == 1) && (sscanf(line, "%*f %*f %*f %*f %*f %f", &temp6) == 1))
            {
                p_ref[number].x = temp1;
                p_ref[number].y = temp2;
                p_ref[number].z = temp3;
                p_ref[number].vx = temp4;
                p_ref[number].vy = temp5;
                p_ref[number].vz = temp6;
                number ++;
            }
        else
        {
            fprintf(stderr, "Error scanning file ref.txt\n");
            return 1;
        }
    }

    fclose(ref_result);

  //
  init(p, n);

  const u64 s = sizeof(particle_t) * n;
  
  printf("\n\033[1mTotal memory size:\033[0m %llu B, %llu KiB, %llu MiB\n\n", s, s >> 10, s >> 20);
  
  //
  printf("\033[1m%5s %10s %10s %8s %8s %8s %8s\033[0m\n", "Step", "Time, s", "Interact/s", "GFLOP/s", "Delta x", "Delta y", "Delta z"); fflush(stdout);
  
  //
  for (u64 i = 0; i < steps; i++)
    {
      //Measure
      const f64 start = omp_get_wtime();

      move_particles(p, dt, n);

      const f64 end = omp_get_wtime();

      //Number of interactions/iteration
      const f32 h1 = (f32)(n) * (f32)(n);

      //Number of GFLOPs
      //Innermost loop (Newton's law)   : 17 FLOPs x n (innermost trip count) x n (outermost trip count)
      //Velocity update (outermost body):  6 FLOPs x n (outermost trip count)
      //Positions update                :  6 FLOPs x n 
      const f32 h2 = (17.0 * h1 + 6.0 * (f32)n + 6.0 * (f32)n) * 1e-9;

      //delta x, delta y, delta z for each iteration
      delta_x = compute_delta_x(p_ref, p, n);
      delta_y = compute_delta_y(p_ref, p, n);
      delta_z = compute_delta_z(p_ref, p, n);

      //Do not take warm up runs into account
      if (i >= warmup)
	{
	  rate += h2 / (f32)(end - start);
	  drate += (h2 * h2) / (f32)((end - start) * (end - start));
    delta += delta_x + delta_y + delta_z;
	}
      
      //
      printf("%5llu %10.3e %10.3e %8.1f %10.3e %10.3e %10.3e %s\n",
	     i,
	     (end - start),
	     h1 / (end - start),
	     h2 / (end - start),
       delta_x, delta_y, delta_z,
	     (i < warmup) ? "(warm up)" : "");
      
      fflush(stdout);
    }
  
  //Average GFLOPs/s
  rate /= (f64)(steps - warmup);

  //Deviation in GFLOPs/s
  drate = sqrt(drate / (f64)(steps - warmup) - (rate * rate));

  //Average delta
  delta /= ((f64)(steps - warmup) * 3.0); 
  
  printf("-----------------------------------------------------\n");
  printf("\033[1m%s %4s \033[42m%10.1lf +- %.1lf GFLOP/s\033[0m\n",
	 "Average performance:", "", rate, drate);   
  printf("-----------------------------------------------------\n");
  printf("Average delta:\t%10.3e\n", delta);
  printf("-----------------------------------------------------\n");

  //
  free(p);
  free(p_ref);

  //
  return 0;
}