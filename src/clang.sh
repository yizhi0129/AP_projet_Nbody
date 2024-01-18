#!/bin/bash
clang -march=native -g3 -O0 -fopenmp -Rpass-analysis=loop-vectorize nbody_base.c -o nbody_base -lm
./nbody_base 1000 > ../results/base_clang_O0.dat
rm -Rf *~ nbody_base

clang -march=native -g3 -O2 -fopenmp -Rpass-analysis=loop-vectorize nbody_base.c -o nbody_base -lm
./nbody_base 1000 > ../results/base_clang_O2.dat
rm -Rf *~ nbody_base

clang -march=native -g3 -O3 -fopenmp -Rpass-analysis=loop-vectorize nbody_base.c -o nbody_base -lm
./nbody_base 1000 > ../results/base_clang_O3.dat
rm -Rf *~ nbody_base

clang -march=native -g3 -Ofast -fopenmp -Rpass-analysis=loop-vectorize nbody_base.c -o nbody_base -lm
./nbody_base 1000 > ../results/base_clang_Ofast.dat
rm -Rf *~ nbody_base

clang -march=native -g3 -O0 -fopenmp -Rpass-analysis=loop-vectorize nbody_opt.c -o nbody_opt -lm
./nbody_base 1000 > ../results/opt_clang_O0.dat
rm -Rf *~ nbody_opt

clang -march=native -g3 -O2 -fopenmp -Rpass-analysis=loop-vectorize nbody_opt.c -o nbody_opt -lm
./nbody_base 1000 > ../results/opt_clang_O2.dat
rm -Rf *~ nbody_opt

clang -march=native -g3 -O3 -fopenmp -Rpass-analysis=loop-vectorize nbody_opt.c -o nbody_opt -lm
./nbody_base 1000 > ../results/opt_clang_O3.dat
rm -Rf *~ nbody_opt

clang -march=native -g3 -Ofast -fopenmp -Rpass-analysis=loop-vectorize nbody_opt.c -o nbody_opt -lm
./nbody_base 1000 > ../results/opt_clang_Ofast.dat
rm -Rf *~ nbody_opt