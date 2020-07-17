#install google chrome
sudo pacman -S google-chrome --noconfirm

#install deepin system manager
sudo pacman -S deepin-system-manager --noconfirm

#install conky
sudo pacman -S conky --noconfirm

#install atom
sudo pacman -S atom --noconfirm

#install grub customizer
sudo pacman -S grub-customizer --noconfirm

#install sed
sudo pacman -S sed --noconfirm

#install neofetch
sudo pacman -S neofetch --noconfirm

#install lolcat
sudo pacman -S lolcat --noconfirm

#add lolcat to neofetch for terminal
neofetch | lolcat > ~/.bashrc

#add conky default file and replace with my custom one
mkdir -p ~/.config/conky && conky --print-config > ~/.config/conky/conky.conf
sudo ~/linux-config/conky-config-file > ~/.config/conky/conky.conf
