#!/bin/bash
gcc -march=native -g3 -O0 -fopenmp -fopt-info-all=nbody.gcc.optrpt nbody.c -o nbody3D -lm
./nbody3D > ../results/gcc_O0.txt
make clean

gcc -march=native -g3 -O2 -fopenmp -fopt-info-all=nbody.gcc.optrpt nbody.c -o nbody3D -lm
./nbody3D > ../results/gcc_O2.txt
make clean

gcc -march=native -g3 -O3 -fopenmp -fopt-info-all=nbody.gcc.optrpt nbody.c -o nbody3D -lm
./nbody3D > ../results/gcc_O3.txt
make clean

gcc -march=native -g3 -Ofast -fopenmp -fopt-info-all=nbody.gcc.optrpt nbody.c -o nbody3D -lm
./nbody3D > ../results/gcc_Ofast.txt
make clean