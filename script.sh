i=0;

#####node_num variation
for((i=4; i<=20; i=i+4))
do
	ns wirelessStatic_802_11_tcp.tcl $i 10 100
	echo "~~~~~~~~~~~~~~~~"
	awk -f wirelessStatic_802_11_tcp.awk staticOut.tr
	echo "~~~~~~~~~~~~~~~~"
done


#####flow variation
#for((i=10; i<=50; i=i+10))
#do
#	ns wirelessStatic_802_11_tcp.tcl 16 $i 100
#	echo "~~~~~~~~~~~~~~~~"
#	awk -f wirelessStatic_802_11_tcp.awk staticOut.tr
#	echo "~~~~~~~~~~~~~~~~"
#done


#####packets per second variation
#for((i=100; i<=500; i=i+100))
#do
	
#	ns wirelessStatic_802_11_tcp.tcl 4 10 $i
#	echo "~~~~~~~~~~~~~~~~"
#	awk -f wirelessStatic_802_11_tcp.awk staticOut.tr
#	echo "~~~~~~~~~~~~~~~~"
#done


#####Tx_range variation
#for((i=250; i<=1000; i=i+250))
#do
	
#	ns wirelessStatic_802_11_tcp.tcl 8 10 100 $i 
#	echo "~~~~~~~~~~~~~~~~"
#	awk -f wirelessStatic_802_11_tcp.awk staticOut.tr
#	echo "~~~~~~~~~~~~~~~~"
#done




