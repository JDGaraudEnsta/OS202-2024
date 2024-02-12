#! /usr/bin/env gnuplot
set xlabel "#cpus"
set ylabel 'speedup'

set xrange [0:120]
set grid
set key bottom right

plot 'timers3.dat' using 1:(12.6598/$2) w lp title 'OMP\_NUM\_THREADS=#cpus ./Mandelbrot.exe'
replot 'timers4.dat' using 1:(12.6557/$2) w lp title 'taskset 0-#cpus ...'
replot x title "ideal" dt 5


pause -1
