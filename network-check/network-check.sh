#!/bin/sh
clear
date > ~/Documents/scripts/network-check/ping1.txt
ping -c2 8.8.8.8 >> ~/Documents/scripts/network-check/ping1.txt
sed -i '8d' ~/Documents/scripts/network-check/ping1.txt
sed -i '7d' ~/Documents/scripts/network-check/ping1.txt
sed -i '6d' ~/Documents/scripts/network-check/ping1.txt
sed -i '5d' ~/Documents/scripts/network-check/ping1.txt
sed -i '2d' ~/Documents/scripts/network-check/ping1.txt
more ~/Documents/scripts/network-check/ping1.txt
