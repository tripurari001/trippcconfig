#!/bin/bash

# this is install script for vim, zsh and tmux 
# if you want to Uninstall then please run uninstall.sh 

rootDir=~/.trippcconfig
vimDir=$rootDir/vim
vimrc=$vimDir/vimrc
nvimrc=$vimDir/init.vim
zshDir=$rootDir/zsh
tmux=$rootDir/tmux/tmux.conf
zshDir=$rootDir/zsh
zshrc=$zshDir/zshrc
backupDir=$rootDir/oldbackup
ohmyzshDir=$zshDir/oh-my-zsh

ohmyzshDestination=~/.oh-my-zsh
tmuxDestination=~/.tmux.conf
zshrcDestination=~/.zshrc
vimrcDestination=~/.vimrc
vimDirDestination=~/.vim
nvimDirDestination=~/.config/nvim
nvimrcDestination=$nvimDirDestination/init.vim

echo ""
echo "                                 ########  ##    ##  "
echo "                                 ##     ##  ##  ##   "
echo "                                 ##     ##   ####    "
echo "                                 ########     ##     "
echo "                                 ##     ##    ##     "
echo "                                 ##     ##    ##     "
echo "                                 ########     ##     "
echo ""
echo " ######## ########  #### ########  ##     ## ########     ###    ########  #### "
echo "    ##    ##     ##  ##  ##     ## ##     ## ##     ##   ## ##   ##     ##  ##  "
echo "    ##    ##     ##  ##  ##     ## ##     ## ##     ##  ##   ##  ##     ##  ##  "
echo "    ##    ########   ##  ########  ##     ## ########  ##     ## ########   ##  "
echo "    ##    ##   ##    ##  ##        ##     ## ##   ##   ######### ##   ##    ##  "
echo "    ##    ##    ##   ##  ##        ##     ## ##    ##  ##     ## ##    ##   ##  "
echo "    ##    ##     ## #### ##         #######  ##     ## ##     ## ##     ## #### "
echo "\n"
echo "please wait 2 sec \n"
sleep 2s

if [ ! -d ~/.trippcconfig ]; then
  echo "\n ~/.trippcconfig directory not found \n Aborting the installation"
  exit;
fi

echo "you can find your old configuration in $backupDir directory \n"

echo "Installing new vim, nvim, tmux, zsh, oh-my-zsh  configuration \n"
sleep 2s

mkdir $backupDir

if [ -f $vimrcDestination ]; then 
  mv $vimrcDestination $backupDir/vimrc
fi
if [ -d $vimDirDestination ]; then 
  mv $vimDirDestination $backupDir/vim
fi
if [ -d $nvimDirDestination ]; then 
  mv $nvimDirDestination $backupDir/nvim
fi
if [ -f $tmux ]; then 
  mv $tmux $backupDir/tmux.conf
fi
if [ -f $zshrcDestination ]; then 
  mv $zshrcDestination $backupDir/zshrc
fi
if [ -d $ohmyzshDestination ]; then 
  mv $ohmyzshDestination $backupDir/oh-my-zsh
fi

ln -s $vimrc $vimrcDestination
ln -s $vimDir $vimDirDestination
ln -s $vimDir $nvimDirDestination
ln -s $tmux $tmuxDestination
ln -s $zsh $zshrcDestination
ln -s $ohmyzshDir $ohmyzshDestination

echo "\n vim, nvim, tmux, zsh, oh-my-zsh configration setup completed successfully \n"
sleep 2s

#cd ~/.vim
#git submodule init
#git submodule update

#  while true; do
#    read -p " do you want to continue ? (y/n)" yn
#    case $yn in
#      [Yy]* ) break;;
#      [Nn]* ) echo "Aborting..." ; exit;;
#      * ) echo "Please answer yes or no.";
#    esac
#  done

#echo "making backup of old vim configration in oldVimBackup folder"
#
#sleep 1s 
#
#cd ~
#
#if [ ! -d ~/oldVimBackup ]; then 
#  mkdir ~/oldVimBackup
#else
#  echo "  A backup folder HOME/oldVimBackup already exists"
#  while true; do
#    read -p "Do you want to delete it (y/n) " yn
#    case $yn in
#      [Yy]* ) rm -r ~/oldVimBackup ; break;;
#      [Nn]* ) echo "please rename oldVimBackup folder and retry" ; exit;;
#      * ) echo "Please answer yes or no.";
#    esac
#  done
#fi
#
#command -v git >/dev/null 2>&1 || { echo >&2 "Git is not installed please install git first.  Aborting."; sleep 1; exit 1; }
#
#if [ -f ~/.vimrc ]; then 
#  mv ~/.vimrc ~/oldVimBackup/vimrc
#fi
#
#if [ -d ~/.vim ]; then 
#  mv ~/.vim ~/oldVimBackup/vim/
#fi

#if [ -d ~/.vimrc ]; then 
#  if [ -L ~/.vimrc ]; then
#    echo "this is a link"
#    #rm "$LINK_OR_DIR"
#  else
#    echo "this is a directory"
#    #rmdir 
#  fi
#fi
