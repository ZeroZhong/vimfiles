# vimfiles
a profile for vim,so that i can do someting at anytime. 

### base profile
1. cd $VIM 
2. ln -s vimfiles/_vimrc
3. in linux , vimfiles is named ~/.vim . in win , is the same name. 

### plugin create
1. mkdir bundle && cd bundle
2. git submodule add https://github.com/gmarik/vundle.git

### plugin clone
1. git clone remotePath
2. git submodule init     
3. git submodule update    

### bundle list
1. vim
2. :BundleList
3. :BundleInstall
