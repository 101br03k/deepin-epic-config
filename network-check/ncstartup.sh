#!/bin/sh
clear
date > ~/Documents/scripts/network-check/ping2.txt
ping -c5 8.8.8.8 > ~/Documents/scripts/network-check/ping1.
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
echo "automated ncheck or manual [auto / manual]"
read ncheck
if [ $ncheck = manual ]
then
  echo "network check set to "manual""
fi
if [ $ncheck = auto ]
then
  echo "automated network check every 10 minutes"
  sleep 1.5
  bash ~/Documents/scripts/network-check/autonetwork-check.sh
fi
