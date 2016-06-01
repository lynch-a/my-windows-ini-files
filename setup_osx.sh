# install brew
# install sublime text
# install sublime text symlink
# install spectacle?


# install vim config
cwd=$(pwd)

git config --global user.email "alex.lynch@knights.ucf.edu"
git config --global user.name "Alex Lynch"

cd $cwd
mkdir ~/.vim
mkdir ~/.vim/colors
cp vim/badwolf.vim ~/.vim/colors/badwolf.vim
cp vim/.vimrc ~/.vimrc

# install sublime text config
cd $cwd
cp sublime/Default\ \(Linux\).sublime-keymap ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(Linux\).sublime-keymap
cp sublime/Default\ \(OSX\).sublime-keymap ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap
cp sublime/Default\ \(Windows\).sublime-keymap ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(Windows\).sublime-keymap
cp sublime/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings

# setup hotkeys
# preferences -> keyboard -> shortcut -> "Zoom" on cmd+shift+m
# preferences -> trackpad -> enable "3 finger click and drag"
# setup gestures
  # four finger swipe up for mission control
	# four fingers to swipe between desktops
