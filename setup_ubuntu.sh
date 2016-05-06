sudo apt-get update
sudo apt-get upgrade
sudo apt-get install build-essential module-assistant

sudo apt-get install -y i3 ruby feh vim chromium-browser git scrot wine nmap wireshark tcpdump tshark binutils tree

mkdir ~/.vim
mkdir ~/.vim/colors
mv vim/badwolf.vim ~/.vim/colors/badwolf.vim
mv vim/.vimrc ~/.vimrc

mkdir ~/.i3/
mv i3/i3config ~/.i3/config

cd ~/Downloads
wget http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2%20x64.tar.bz2 -O subl.tar.bz2
tar xvjf subl.tar.bz2
mv Sublime\ Text\ 2/ ~/Sublime
sudo ln -s ~/Sublime/sublime_text /usr/bin/subl
mv sublime/Default\ (Linux).sublime-keymap ~/.config/sublime-text-2/Packages/user/Default\ (Linux).sublime-keymap
mv sublime/Default\ (OSX).sublime-keymap ~/.config/sublime-text-2/Packages/user/Default\ (OSX).sublime-keymap
mv sublime/Default\ (Windows).sublime-keymap ~/.config/sublime-text-2/Packages/user/Default\ (Windows).sublime-keymap
mv sublime/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/user/Preferences.sublime-settings

#radare
cd ~
git clone https://github.com/radare/radare2.git
bash radare2/sys/install.sh

#binwalk