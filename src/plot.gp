set title "Basic Algorithm Performance"
set terminal pngcairo   
set output "../plot/perf_base.png"  

set style data histograms
set style fill solid
set boxwidth 0.5

set xtics rotate by -60
set xtics ("GCC -O0" 0, "GCC -O2" 1, "GCC -O3" 2, "GCC -Ofast" 3, "CLANG -O0" 4, "CLANG -O2" 5, "CLANG -O3" 6, "CLANG -Ofast" 7) 

set ylabel "GFLOP/s"

plot 'perf_base.txt' using 0:1 with boxes notitle, \
    '' using 0:1:2 with yerrorbars title 'Error Bars' lc rgb "red"


set title "Optimized Algorithm Performance"
set terminal pngcairo   
set output "../plot/perf_opt.png"  

set style data histograms
set style fill solid
set boxwidth 0.5

set xtics rotate by -60
set xtics ("GCC -O0" 0, "GCC -O2" 1, "GCC -O3" 2, "GCC -Ofast" 3, "CLANG -O0" 4, "CLANG -O2" 5, "CLANG -O3" 6, "CLANG -Ofast" 7) 

set ylabel "GFLOP/s"

plot 'perf_opt.txt' using 0:1 with boxes notitle, \
    '' using 0:1:2 with yerrorbars title 'Error Bars' lc rgb "red"