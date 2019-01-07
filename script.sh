i=0;
sudo rm "gnuTest.dat"
#####node_num variation
echo "                     Number of nodes"
echo "" 
for((i=4; i<=8; i=i+4))
do
	ns wirelessStatic_802_11_tcp.tcl $i 10 100
	echo "~~~~~~~~~~~~~~~~"
	awk -f wirelessStatic_802_11_tcp.awk staticOut.tr
	echo "~~~~~~~~~~~~~~~~"
done

gnuplot -p << EOF
set title "Node Number vs Throughput"
set xlabel "Node Number"
set ylabel "Throughput"
plot "gnuTest.dat" using 1:4 title 'Throughput' with linespoints

EOF

gnuplot -p << EOF
set title "Node Number vs Receive Ratio-Drop Ratio"
set xlabel "Node Number"
set ylabel "Receive Ratio-Drop Ratio"
plot "gnuTest.dat" using 1:5 title 'ReceivedRatio' with linespoints,"gnuTest.dat" using 1:6 title 'DropRatio' with linespoints
EOF


sudo rm "gnuTest.dat"
#####flow variation
echo "                      Number of flows"
echo " "
for((i=10; i<=20; i=i+10))
do
	ns wirelessStatic_802_11_tcp.tcl 16 $i 100
	echo "~~~~~~~~~~~~~~~~"
	awk -f wirelessStatic_802_11_tcp.awk staticOut.tr
	echo "~~~~~~~~~~~~~~~~"
done

gnuplot -p << EOF
set title "Flow Number vs Throughput"
set xlabel "Flow Number"
set ylabel "Throughput"
plot "gnuTest.dat" using 2:4 title 'Throughput' with linespoints

EOF

gnuplot -p << EOF
set title "Flow Number vs Receive Ratio-Drop Ratio"
set xlabel "Flow Number"
set ylabel "Receive Ratio-Drop Ratio"
plot "gnuTest.dat" using 2:5 title 'Receive Ratio' with linespoints,"gnuTest.dat" using 2:6 title 'Drop Ratio' with linespoints
EOF



sudo rm "gnuTest.dat"
#####packets per second variation
echo "                    Number of packets per second"
echo " "
ns wirelessStatic_802_11_tcp.tcl 4 10 1
	echo "~~~~~~~~~~~~~~~~"
	awk -f wirelessStatic_802_11_tcp.awk staticOut.tr
	echo "~~~~~~~~~~~~~~~~"
for((i=100; i<=500; i=i+100))
do
	
	ns wirelessStatic_802_11_tcp.tcl 4 10 $i
	echo "~~~~~~~~~~~~~~~~"
	awk -f wirelessStatic_802_11_tcp.awk staticOut.tr
	echo "~~~~~~~~~~~~~~~~"
done

gnuplot -p << EOF
set title "Packets per second vs Throughput"
set xlabel "Packets per second"
set ylabel "Throughput"
plot "gnuTest.dat" using 3:4 title 'Throughput' with linespoints

EOF

gnuplot -p << EOF
set title "Packets per second vs Receive Ratio-Drop Ratio"
set xlabel "Packets per second"
set ylabel "Receive Ratio-Drop Ratio"
plot "gnuTest.dat" using 3:5 title 'Receive Ratio' with linespoints,"gnuTest.dat" using 3:6 title 'Drop Ratio' with linespoints
EOF

#####Tx_range variation
#for((i=250; i<=1000; i=i+250))
#do
	
#	ns wirelessStatic_802_11_tcp.tcl 8 10 100 $i 
#	echo "~~~~~~~~~~~~~~~~"
#	awk -f wirelessStatic_802_11_tcp.awk staticOut.tr
#	echo "~~~~~~~~~~~~~~~~"
#done




