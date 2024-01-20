#!/bin/bash
clang -march=native -g3 -O0 -fopenmp -Rpass-analysis=loop-vectorize nbody_base.c -o nbody_base -lm -S
taskset -c 3 ./nbody_base 1000 > ../results/base_clang_O0.txt
rm -Rf *~ nbody_base

clang -march=native -g3 -O2 -fopenmp -Rpass-analysis=loop-vectorize nbody_base.c -o nbody_base -lm -S
taskset -c 3 ./nbody_base 1000 > ../results/base_clang_O2.txt
rm -Rf *~ nbody_base

clang -march=native -g3 -O3 -fopenmp -Rpass-analysis=loop-vectorize nbody_base.c -o nbody_base -lm -S
taskset -c 3 ./nbody_base 1000 > ../results/base_clang_O3.txt
rm -Rf *~ nbody_base

clang -march=native -g3 -Ofast -fopenmp -Rpass-analysis=loop-vectorize nbody_base.c -o nbody_base -lm -S
taskset -c 3 ./nbody_base 1000 > ../results/base_clang_Ofast.txt
rm -Rf *~ nbody_base

clang -march=native -g3 -O0 -fopenmp -Rpass-analysis=loop-vectorize nbody_opt.c -o nbody_opt -lm -S
taskset -c 3 ./nbody_opt 1000 > ../results/opt_clang_O0.txt
rm -Rf *~ nbody_opt

clang -march=native -g3 -O2 -fopenmp -Rpass-analysis=loop-vectorize nbody_opt.c -o nbody_opt -lm -S
taskset -c 3 ./nbody_opt 1000 > ../results/opt_clang_O2.txt
rm -Rf *~ nbody_opt

clang -march=native -g3 -O3 -fopenmp -Rpass-analysis=loop-vectorize nbody_opt.c -o nbody_opt -lm -S
taskset -c 3 ./nbody_opt 1000 > ../results/opt_clang_O3.txt
rm -Rf *~ nbody_opt

clang -march=native -g3 -Ofast -fopenmp -Rpass-analysis=loop-vectorize nbody_opt.c -o nbody_opt -lm -S
taskset -c 3 ./nbody_opt 1000 > ../results/opt_clang_Ofast.txt
rm -Rf *~ nbody_opt