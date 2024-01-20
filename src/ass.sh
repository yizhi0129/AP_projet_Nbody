#!/bin/bash

gcc -S nbody.c
gcc -S base_gcc.s nbody_base.c
gcc -S opt_gcc.s nbody_opt.c

mv *.s ../assembly/

clang -S base_clang.s nbody_base.c
clang -S opt_clang.s nbody_opt.c

mv *.s ../assembly/