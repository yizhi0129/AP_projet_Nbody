#!/bin/bash

line=19
column=4
column2=6

awk -v line=$line -v column=$column -v column2=$column2 'NR == line {print $column, $column2}' "../ref/base_gcc_O0.txt" >> "perf_base.txt"
awk -v line=$line -v column=$column -v column2=$column2 'NR == line {print $column, $column2}' "../results/base_gcc_O2.txt" >> "perf_base.txt"
awk -v line=$line -v column=$column -v column2=$column2 'NR == line {print $column, $column2}' "../results/base_gcc_O3.txt" >> "perf_base.txt"
awk -v line=$line -v column=$column -v column2=$column2 'NR == line {print $column, $column2}' "../results/base_gcc_Ofast.txt" >> "perf_base.txt"
awk -v line=$line -v column=$column -v column2=$column2 'NR == line {print $column, $column2}' "../results/base_clang_O0.txt" >> "perf_base.txt"
awk -v line=$line -v column=$column -v column2=$column2 'NR == line {print $column, $column2}' "../results/base_clang_O2.txt" >> "perf_base.txt"
awk -v line=$line -v column=$column -v column2=$column2 'NR == line {print $column, $column2}' "../results/base_clang_O3.txt" >> "perf_base.txt"
awk -v line=$line -v column=$column -v column2=$column2 'NR == line {print $column, $column2}' "../results/base_clang_Ofast.txt" >> "perf_base.txt"

awk -v line=$line -v column=$column -v column2=$column2 'NR == line {print $column, $column2}' "../results/opt_gcc_O0.txt" >> "perf_opt.txt"
awk -v line=$line -v column=$column -v column2=$column2 'NR == line {print $column, $column2}' "../results/opt_gcc_O2.txt" >> "perf_opt.txt"
awk -v line=$line -v column=$column -v column2=$column2 'NR == line {print $column, $column2}' "../results/opt_gcc_O3.txt" >> "perf_opt.txt"
awk -v line=$line -v column=$column -v column2=$column2 'NR == line {print $column, $column2}' "../results/opt_gcc_Ofast.txt" >> "perf_opt.txt"
awk -v line=$line -v column=$column -v column2=$column2 'NR == line {print $column, $column2}' "../results/opt_clang_O0.txt" >> "perf_opt.txt"
awk -v line=$line -v column=$column -v column2=$column2 'NR == line {print $column, $column2}' "../results/opt_clang_O2.txt" >> "perf_opt.txt"
awk -v line=$line -v column=$column -v column2=$column2 'NR == line {print $column, $column2}' "../results/opt_clang_O3.txt" >> "perf_opt.txt"
awk -v line=$line -v column=$column -v column2=$column2 'NR == line {print $column, $column2}' "../results/opt_clang_Ofast.txt" >> "perf_opt.txt"