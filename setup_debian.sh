
# step 1) add to sudoers (be root):
# usermod -aG sudo NAME

# step 2) install virtualbox additions/vmware tools

## virtualbox instructions
# remove cdrom from sources
# sudo sed -i '/cdrom/d' /etc/apt/sources.list

# sudo apt-get install build-essential module-assistant
# m-a prepare
# -- insert guest additions cd here
# cp /media/cdrom0/ ~/Desktop
# cd ~/Desktop
# ./VBoxLinuxAdditions.run
## end virtualbox instructions, go ahead and run script

## esxi
# apt-get install vmtoolsidkgoogleitagain
##

# backup sources.list
sudo cp /etc/apt/sources.list /etc/apt/sources.list_backup
sudo sed -i '/cdrom/d' /etc/apt/sources.list

sudo apt-get update
sudo apt-get upgrade
#sudo apt-get dist-upgrade

#sudo apt-get install deborphan

username=`who am i | awk '{print $1}'`

sudo apt-get install -y netselect-apt

sudo apt-get install -y i3 ruby feh vim chromium git scrot wine nmap wireshark tcpdump tshark binutils tree

# set chrome as default browser
sudo update-alternatives --config gnome-www-browser

# setup desktop image
wget http://gemini.parodybit.net/desktop.jpg -O ~/Pictures/desktop.jpg
echo "feh  --bg-fill '/home/$username/Pictures/desktop.jpg' " > ~/.fehbg

# setup i3 config
mkdir ~/.i3/ && wget http://gemini.parodybit.net/i3config -O ~/.i3/config

# setup vim
mkdir ~/.vim
mkdir ~/.vim/colors
wget https://raw.githubusercontent.com/sjl/badwolf/master/colors/badwolf.vim -O ~/.vim/colors/badwolf.vim
wget http://gemini.parodybit.net/.vimrc -O ~/.vimrc

# setup aliases (todo: make better)
#sh -c "echo \"alias aslr_on=\"su -c \"echo \"2\" > /proc/sys/kernel/randomize_va_space\"\"\" >> \"/home/$username/.bashrc\""
#echo "alias aslr_off=\"su -c \"echo \"0\" > /proc/sys/kernel/randomize_va_space\"\"" >> "/home/$username/.bashrc"
#echo "alias ida=\"wine \"/home/$username/.wine/drive_c/Program Files/IDA\ Free/idag.exe\"\"" >> "/home/$username/.bashrc"
#echo "alias ida=\"wine \"/home/$username/.wine/drive_c/Program Files/IDA\ Free/idag.exe\"\"" >> "/home/$username/.bashrc"

# install radare
#cd "/home/$username/Downloads"
#git clone https://github.com/radare/radare2.git
#radare2/sys/install.sh 

# install binwalk
#mkdir "/home/$username/"
#cd "/home/$username/"
#git clone https://github.com/devttys0/binwalk.git
#cd "/home/$username/binwalk"
#python setup.py install

# install python/pip junk
cd "/home/$username/"
sudo apt-get -y install python-pip python-dev build-essential
#wget https://bootstrap.pypa.io/get-pip.py -O get-pip.py
#sudo python get-pip.py

# install ctf tools
sudo apt-get install build-essential libtool g++ gcc texinfo curl wget automake autoconf python-dev libtool-bin
cd "/home/$username/"
git clone https://github.com/zardus/ctf-tools.git
cd "ctf-tools/bin"
./manage-tools setup
source ~/.bashrc
sudo env "PATH=$PATH" ./manage-tools -s install all



#install multiarch:
sudo dpkg --add-architecture i386
sudo apt-get install -y libc6:i386
sudo apt-get install -y ia32-libs-i386
sudo apt-get install -y gcc-multilib # this works the best

#sublimetext
cd "/home/$username/Downloads"
wget http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2%20x64.tar.bz2 -O subl.tar.bz2
tar xvjf subl.tar.bz2
mv Sublime\ Text\ 2/ ~/Sublime
sudo ln -s ~/Sublime/sublime_text /usr/bin/subl

#download ida w/ wine
#wget http://out7.hex-rays.com/files/idafree50.exe -O /tmp/ida50.exe
#wine /tmp/ida50.exe