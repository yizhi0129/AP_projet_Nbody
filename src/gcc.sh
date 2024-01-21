#!/bin/bash
make
taskset -c 3 ./nbody3D > ../ref/base_gcc_O0.txt
make clean

gcc -march=native -g3 -O2 -fopenmp -fopt-info-all=nbody.gcc.optrpt nbody_base.c -o nbody_base -lm
taskset -c 3 ./nbody_base > ../results/base_gcc_O2.txt
rm -Rf *~ nbody_base *.optrpt

gcc -march=native -g3 -O3 -fopenmp -fopt-info-all=nbody.gcc.optrpt nbody_base.c -o nbody_base -lm
taskset -c 3 ./nbody_base > ../results/base_gcc_O3.txt
rm -Rf *~ nbody_base *.optrpt

gcc -march=native -g3 -Ofast -fopenmp -fopt-info-all=nbody.gcc.optrpt nbody_base.c -o nbody_base -lm
taskset -c 3 ./nbody_base > ../results/base_gcc_Ofast.txt
rm -Rf *~ nbody_base *.optrpt



gcc -march=native -g3 -O0 -fopenmp -fopt-info-all=nbody.gcc.optrpt nbody_opt.c -o nbody_opt -lm
./nbody_opt > ../results/opt_gcc_O0.txt
rm -Rf *~ nbody_opt *.optrpt

gcc -march=native -g3 -O2 -fopenmp -fopt-info-all=nbody.gcc.optrpt nbody_opt.c -o nbody_opt -lm
./nbody_opt > ../results/opt_gcc_O2.txt
rm -Rf *~ nbody_opt *.optrpt

gcc -march=native -g3 -O3 -fopenmp -fopt-info-all=nbody.gcc.optrpt nbody_opt.c -o nbody_opt -lm
./nbody_opt > ../results/opt_gcc_O3.txt
rm -Rf *~ nbody_opt *.optrpt

gcc -march=native -g3 -Ofast -fopenmp -fopt-info-all=nbody.gcc.optrpt nbody_opt.c -o nbody_opt -lm
./nbody_opt > ../results/opt_gcc_Ofast.txt
rm -Rf *~ nbody_opt *.optrpt



gcc -march=native -g3 -O0 -fopenmp -fopt-info-all=nbody.gcc.optrpt nbody_opt.c -o nbody_opt -lm
OMP_PROC_BIND=close OMP_PLACES=cores numactl --membind=0 ./nbody_opt > ../results/opt_gcc_O0_numa.txt
rm -Rf *~ nbody_opt *.optrpt

gcc -march=native -g3 -O2 -fopenmp -fopt-info-all=nbody.gcc.optrpt nbody_opt.c -o nbody_opt -lm
OMP_PROC_BIND=close OMP_PLACES=cores numactl --membind=0 ./nbody_opt > ../results/opt_gcc_O2_numa.txt
rm -Rf *~ nbody_opt *.optrpt

gcc -march=native -g3 -O3 -fopenmp -fopt-info-all=nbody.gcc.optrpt nbody_opt.c -o nbody_opt -lm
OMP_PROC_BIND=close OMP_PLACES=cores numactl --membind=0 ./nbody_opt > ../results/opt_gcc_O3_numa.txt
rm -Rf *~ nbody_opt *.optrpt

gcc -march=native -g3 -Ofast -fopenmp -fopt-info-all=nbody.gcc.optrpt nbody_opt.c -o nbody_opt -lm
OMP_PROC_BIND=close OMP_PLACES=cores numactl --membind=0 ./nbody_opt > ../results/opt_gcc_Ofast_numa.txt
rm -Rf *~ nbody_opt *.optrpt
