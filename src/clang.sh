#!/bin/bash
clang -march=native -g3 -O0 -fopenmp nbody_base.c -o nbody_base -lm
taskset -c 3 ./nbody_base > ../results/base_clang_O0.txt
rm -Rf *~ nbody_base

clang -march=native -g3 -O2 -fopenmp nbody_base.c -o nbody_base -lm
taskset -c 3 ./nbody_base > ../results/base_clang_O2.txt
rm -Rf *~ nbody_base

clang -march=native -g3 -O3 -fopenmp nbody_base.c -o nbody_base -lm
taskset -c 3 ./nbody_base > ../results/base_clang_O3.txt
rm -Rf *~ nbody_base

clang -march=native -g3 -Ofast -fopenmp nbody_base.c -o nbody_base -lm
taskset -c 3 ./nbody_base > ../results/base_clang_Ofast.txt
rm -Rf *~ nbody_base



clang -march=native -g3 -O0 -fopenmp nbody_opt.c -o nbody_opt -lm
./nbody_opt > ../results/opt_clang_O0.txt
rm -Rf *~ nbody_opt

clang -march=native -g3 -O2 -fopenmp nbody_opt.c -o nbody_opt -lm
./nbody_opt > ../results/opt_clang_O2.txt
rm -Rf *~ nbody_opt

clang -march=native -g3 -O3 -fopenmp nbody_opt.c -o nbody_opt -lm
./nbody_opt > ../results/opt_clang_O3.txt
rm -Rf *~ nbody_opt

clang -march=native -g3 -Ofast -fopenmp nbody_opt.c -o nbody_opt -lm
./nbody_opt > ../results/opt_clang_Ofast.txt
rm -Rf *~ nbody_opt



clang -march=native -g3 -O0 -fopenmp nbody_opt.c -o nbody_opt -lm
OMP_PROC_BIND=close OMP_PLACES=cores numactl --membind=0 ./nbody_opt > ../results/opt_clang_O0_numa.txt
rm -Rf *~ nbody_opt

clang -march=native -g3 -O2 -fopenmp nbody_opt.c -o nbody_opt -lm
OMP_PROC_BIND=close OMP_PLACES=cores numactl --membind=0 ./nbody_opt > ../results/opt_clang_O2_numa.txt
rm -Rf *~ nbody_opt

clang -march=native -g3 -O3 -fopenmp nbody_opt.c -o nbody_opt -lm
OMP_PROC_BIND=close OMP_PLACES=cores numactl --membind=0 ./nbody_opt > ../results/opt_clang_O3_numa.txt
rm -Rf *~ nbody_opt

clang -march=native -g3 -Ofast -fopenmp nbody_opt.c -o nbody_opt -lm
OMP_PROC_BIND=close OMP_PLACES=cores numactl --membind=0 ./nbody_opt > ../results/opt_clang_Ofast_numa.txt
rm -Rf *~ nbody_opt