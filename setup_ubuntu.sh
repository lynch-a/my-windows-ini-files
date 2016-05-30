cwd=$(pwd)

sudo add-apt-repository ppa:klaus-vormweg/awesome

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install -y build-essential module-assistant linux-headers-$(uname -r)
sudo apt-get -y open-vm-tools open-vm-tools-desktop

#i3 gaps dependencies
sudo apt-get install -y libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev

#cd ~
#git clone https://www.github.com/Airblader/i3 i3-gaps
#cd i3-gaps
#git checkout gaps && git pull
#make
#sudo make install

sudo apt-get install -y i3 ruby feh vim git scrot wine nmap tcpdump tshark binutils tree

git config --global user.email "alex.lynch@knights.ucf.edu"
git config --global user.name "Alex Lynch"

cd $cwd
mkdir ~/.vim
mkdir ~/.vim/colors
cp vim/badwolf.vim ~/.vim/colors/badwolf.vim
cp vim/.vimrc ~/.vimrc

mkdir ~/.config/i3/
mv i3/i3config ~/.config/i3/config

sudo apt-get update
sudo apt-get install awesome
cd ~
git clone --recursive https://github.com/copycat-killer/awesome-copycats.git
mkdir ~/.config/awesome
cd awesome-copycats
mv * ~/.config/awesome
cd ../
rm -rf awesome-copycats

cd $cwd
cp awesome/rc.lua ~/.config/awesome/rc.lua
cp awesome/theme.lua ~/.config/awesome/themes/multicolor/theme.lua

cd ~/Downloads
wget http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2%20x64.tar.bz2 -O subl.tar.bz2
tar xvjf subl.tar.bz2
mv Sublime\ Text\ 2/ ~/Sublime
sudo ln -s ~/Sublime/sublime_text /usr/bin/subl
subl & #run sublimetext to create config directories
sleep 2
kill $(pgrep subl)

cd $cwd
cp sublime/Default\ \(Linux\).sublime-keymap ~/.config/sublime-text-2/Packages/User/Default\ \(Linux\).sublime-keymap
cp sublime/Default\ \(OSX\).sublime-keymap ~/.config/sublime-text-2/Packages/User/Default\ \(OSX\).sublime-keymap
cp sublime/Default\ \(Windows\).sublime-keymap ~/.config/sublime-text-2/Packages/User/Default\ \(Windows\).sublime-keymap
cp sublime/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/Preferences.sublime-settings


#afl
cd ~
wget http://lcamtuf.coredump.cx/afl/releases/afl-latest.tgz -O afl.tgz
tar -xzf afl.tgz
## this will unzip a folder with an unknown name. just cd into it and run make to install afl :\

#radare
cd ~
git clone https://github.com/radare/radare2.git
bash radare2/sys/install.sh

#binwalk

#peda
cd ~
git clone https://github.com/longld/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit

# these have curses dialogs to click through
sudo apt-get install -y wireshark chromium-browser
