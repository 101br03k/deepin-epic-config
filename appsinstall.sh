func_install() {
	if pacman -Qi $1 &> /dev/null; then
		tput setaf 2
  		echo "###############################################################################"
  		echo "################## The package "$1" is already installed"
      	echo "###############################################################################"
      	echo
		tput sgr0
	else
    	tput setaf 3
    	echo "###############################################################################"
    	echo "##################  Installing package "  $1
    	echo "###############################################################################"
    	echo
    	tput sgr0
    	sudo pacman -S --noconfirm --needed $1
    fi
}

func_category() {
	tput setaf 5;
	echo "################################################################"
	echo "Installing software for category " $1
	echo "################################################################"
	echo;tput sgr0
}

###############################################################################

func_category Accessories

list=(
conky
grub-customizer
lolcat
banner
figlet
asciiquarium
cowfortune
bash-pipes
cava
tty-clock
xarg

)

count=0
for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

###############################################################################

#func_category Development

#list=(

#)

#count=0
#for name in "${list[@]}" ; do
#	count=$[count+1]
#	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
#	func_install $name
#done

###############################################################################

#func_category Grapics

#list=(

#)

#count=0
#for name in "${list[@]}" ; do
#	count=$[count+1]
#	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
#	func_install $name
#done

###############################################################################

func_category Internet

list=(
google-chrome
tor
qbittorrent
)

count=0
for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

###############################################################################

func_category Multimedia

list=(
vlc
ncmpcpp
)

count=0
for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

###############################################################################

func_category Office

list=(
sublime-text-dev
)

count=0
for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

###############################################################################

func_category System

list=(
sed
neofetch
cpufetch-git
xfce4-terminal
tilix
cool-retro-term
bashtop
bpytop
mc
ranger
)

count=0
for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

###############################################################################

tput setaf 11;
echo "################################################################"
echo "Software has been installed"
echo "################################################################"
echo;tput sgr0

###############################################################################

#add conky default file and replace with my custom one
mkdir -p ~/.config/conky && conky --print-config > ~/.config/conky/conky.conf

curl -sSL https://github.com/Slackadays/Clipboard/raw/main/install.sh | bash
echo "install ksysguard (a system monitor) by hand via add/remove software"
echo "also replace the default conky config by the one in this folder"
