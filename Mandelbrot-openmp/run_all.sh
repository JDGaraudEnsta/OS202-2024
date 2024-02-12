#! /bin/bash

echo "# cpus   time(s)"

# for smp in 1 2 4 8 $(seq 12 4 96) ; do
for smp in $(seq 1 200) ; do
    /bin/echo -e -n "$smp \t "
    OMP_NUM_THREADS=$smp ./Mandelbrot-openmp.exe |cut -d ' ' -f 6
    # OMP_NUM_THREADS=$smp taskset --cpu-list 0-${smp} ./Mandelbrot.exe |cut -d ' ' -f 6
done
