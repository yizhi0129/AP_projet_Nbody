#!/bin/bash
clang -march=native -g3 -O0 -fopenmp -Rpass-analysis=loop-vectorize nbody.c -o nbody3D -lm
./nbody3D 1000 > ../results/clang_O0.dat
make clean

clang -march=native -g3 -O2 -fopenmp -Rpass-analysis=loop-vectorize nbody.c -o nbody3D -lm
./nbody3D 1000 > ../results/clang_O2.dat
make clean

clang -march=native -g3 -O3 -fopenmp -Rpass-analysis=loop-vectorize nbody.c -o nbody3D -lm
./nbody3D 1000 > ../results/clang_O3.dat
make clean

clang -march=native -g3 -Ofast -fopenmp -Rpass-analysis=loop-vectorize nbody.c -o nbody3D -lm
./nbody3D 1000 > ../results/clang_Ofast.dat
make clean