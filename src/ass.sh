#!/bin/bash

gcc -S -o nbody.s nbody.c
gcc -S -o base_gcc.s nbody_base.c
gcc -S -o opt_gcc.s nbody_opt.c

mv *.s ../assembly/

clang -S -o base_clang.s nbody_base.c
clang -S -o opt_clang.s nbody_opt.c

mv *.s ../assembly/
