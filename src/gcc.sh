#!/bin/bash
gcc -march=native -g3 -O0 -fopenmp -fopt-info-all=nbody.gcc.optrpt nbody.c -o nbody3D -lm
./nbody3D 1000 > ../results/ref_gcc_O0.dat
make clean

gcc -march=native -g3 -O2 -fopenmp -fopt-info-all=nbody.gcc.optrpt nbody.c -o nbody3D -lm
./nbody3D 1000 > ../results/gcc_O2.dat
make clean

gcc -march=native -g3 -O3 -fopenmp -fopt-info-all=nbody.gcc.optrpt nbody.c -o nbody3D -lm
./nbody3D 1000 > ../results/gcc_O3.dat
make clean

gcc -march=native -g3 -Ofast -fopenmp -fopt-info-all=nbody.gcc.optrpt nbody.c -o nbody3D -lm
./nbody3D 1000 > ../results/gcc_Ofast.dat
make clean