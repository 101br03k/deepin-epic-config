!#/bin/sh
echo "wat wil je runnen"
echo "1 figlet"
echo "2 asciiquarium"
echo "3 cowfortune"
echo "4 bash-pipes"
echo "5 tty-clock"
echo "6 cool-retro-term"
echo "7 bashtop"
echo "8 mc"
echo "9 ranger"
echo "10 csgo-console"
echo "11 cpu-fetch"
read run
if [ $run = 1 ]
then
	echo "wat wil je in figlet"
	read figlet
	figlet $figlet
fi
if [ $run = 2 ]
then
	asciiquarium
fi
if [ $run = 3 ]
then
	cowfortune
fi
if [ $run = 4 ]
then
	bash-pipes
fi
if [ $run = 5 ]
then
	tty-clock
fi
if [ $run = 6 ]
then
	cool-retro-term
fi
if [ $run = 7 ]
then
	bashtop
fi
if [ $run = 8 ]
then
	mc
fi
if [ $run = 9 ]
then
	ranger
fi
if [ $run = 10 ]
then
	cd /home/a3/Documents/linux-config/CSGO-console/
	./CSGO-console
fi
if [ $run = 11 ]
then
	cpufetch
fi