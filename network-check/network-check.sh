#!/bin/sh
clear
date > ~/Documents/scripts/network-check/ping2.txt
ping -c5 114.114.114.114 > ~/Documents/scripts/network-check/ping1.txt
sed -i '9d' ~/Documents/scripts/network-check/ping1.txt
sed -i '8d' ~/Documents/scripts/network-check/ping1.txt
sed -i '7d' ~/Documents/scripts/network-check/ping1.txt
sed -i '6d' ~/Documents/scripts/network-check/ping1.txt
sed -i '5d' ~/Documents/scripts/network-check/ping1.txt
sed -i '4d' ~/Documents/scripts/network-check/ping1.txt
sed -i '3d' ~/Documents/scripts/network-check/ping1.txt
sed -i '2d' ~/Documents/scripts/network-check/ping1.txt
sed -i '1d' ~/Documents/scripts/network-check/ping1.txt
sed -r 's/^.{23}//' < ~/Documents/scripts/network-check/ping1.txt >> ~/Documents/scripts/network-check/ping2.txt
more ~/Documents/scripts/network-check/ping2.txt
