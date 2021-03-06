set terminal epslatex size 5,3 color colortext

set output 'binary_swap_problemSizeVsTime.tex'
set title 'Binary Swapped Loops: Variation in time compared to the number of training samples iterations: 1000'
set xlabel 'Training Samples [log base 10]'
set ylabel 'Time[sec]'
set xrange [0:4]
set yrange [0:4]
set xtics (0,1,2,3,4)
set ytics (0,1,2,3,4)
set key left
plot "binary_swap_problemSizeVsTime.txt" using 1:2 with linespoints title 'Serial Code', \
"binary_swap_problemSizeVsTime.txt" using 1:3 with linespoints title 'Parallel Code'

set output 'binary_swap_problemSizeVsSpeedup.tex'
set title 'Binary Swapped Loops: Variation in speedup compared to the number of training samples iterations: 1000'
set xlabel 'Training Samples [log base 10]'
set ylabel 'Speedup'
set xrange [0:4]
set yrange [0:4]
set xtics (0,1,2,3,4)
set ytics (0,1,2,3,4)
set key left
plot "binary_swap_problemSizeVsSpeedup.txt" using 1:2 with linespoints title 'Speedup'

set output 'binary_swap_coresVsSpeedup.tex'
set title 'Binary Swapped Loops: Variation in speedup compared to the number of threads'
set xlabel 'No. of Threads'
set ylabel 'Speedup'
set xrange [0:14]
set yrange [0:5]
set xtics (0,1,2,3,4,5,6,7,8,9,10,11,12,13,14)
set ytics (0,1,2,3,4)
set key left
plot "binary_swap_coresVsSpeedup_size100.txt" using 1:2 with linespoints title 'Samples: 100', \
"binary_swap_coresVsSpeedup_size1499.txt" using 1:2 with linespoints title 'Samples: 1499'
