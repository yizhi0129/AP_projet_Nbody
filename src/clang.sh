#!/bin/bash
clang -march=native -g3 -O0 -fopenmp -Rpass-analysis=loop-vectorize nbody.c -o nbody3D -lm
./nbody3D > ../results/clang_O0.txt
make clean

clang -march=native -g3 -O2 -fopenmp -Rpass-analysis=loop-vectorize nbody.c -o nbody3D -lm
./nbody3D > ../results/clang_O2.txt
make clean

clang -march=native -g3 -O3 -fopenmp -Rpass-analysis=loop-vectorize nbody.c -o nbody3D -lm
./nbody3D > ../results/clang_O3.txt
make clean

clang -march=native -g3 -Ofast -fopenmp -Rpass-analysis=loop-vectorize nbody.c -o nbody3D -lm
./nbody3D > ../results/clang_Ofast.txt
make clean