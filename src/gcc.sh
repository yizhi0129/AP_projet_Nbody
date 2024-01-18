#!/bin/bash
make
./nbody3D 1000 > ../ref/base_gcc_O0.dat
make clean

gcc -march=native -g3 -O2 -fopenmp -fopt-info-all=nbody.gcc.optrpt nbody_base.c -o nbody_base -lm
./nbody_base 1000 > ../results/base_gcc_O2.dat
rm -Rf *~ nbody_base *.optrpt

gcc -march=native -g3 -O3 -fopenmp -fopt-info-all=nbody.gcc.optrpt nbody_base.c -o nbody_base -lm
./nbody_base 1000 > ../results/base_gcc_O3.dat
rm -Rf *~ nbody_base *.optrpt

gcc -march=native -g3 -Ofast -fopenmp -fopt-info-all=nbody.gcc.optrpt nbody_base.c -o nbody_base -lm
./nbody_base 1000 > ../results/base_gcc_Ofast.dat
rm -Rf *~ nbody_base *.optrpt

gcc -march=native -g3 -O0 -fopenmp -fopt-info-all=nbody.gcc.optrpt nbody_opt.c -o nbody_opt -lm
./nbody_base 1000 > ../results/opt_gcc_O0.dat
rm -Rf *~ nbody_opt *.optrpt

gcc -march=native -g3 -O2 -fopenmp -fopt-info-all=nbody.gcc.optrpt nbody_opt.c -o nbody_opt -lm
./nbody_base 1000 > ../results/opt_gcc_O2.dat
rm -Rf *~ nbody_opt *.optrpt

gcc -march=native -g3 -O3 -fopenmp -fopt-info-all=nbody.gcc.optrpt nbody_opt.c -o nbody_opt -lm
./nbody_base 1000 > ../results/opt_gcc_O3.dat
rm -Rf *~ nbody_opt *.optrpt

gcc -march=native -g3 -Ofast -fopenmp -fopt-info-all=nbody.gcc.optrpt nbody_opt.c -o nbody_opt -lm
./nbody_base 1000 > ../results/opt_gcc_Ofast.dat
rm -Rf *~ nbody_opt *.optrpt