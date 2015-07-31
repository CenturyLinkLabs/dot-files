#!/bin/bash -e
echo "Linking dot files into $HOME"

ln -s $(pwd)/bash_aliases $HOME/.bash_aliases
ln -s $(pwd)/editrc $HOME/.editrc
ln -s $(pwd)/gemrc $HOME/.gemrc
ln -s $(pwd)/gitconfig $HOME/.gitconfig
ln -s $(pwd)/inputrc $HOME/.inputrc
ln -s $(pwd)/inputrc $HOME/.inputrc
ln -s $(pwd)/tmux.conf $HOME/.tmux.conf
ln -s $(pwd)/vim $HOME/.vim
ln -s $(pwd)/vim/vimrc $HOME/.vimrc

if [ -d $HOME/.ssh ]; then
  ln -s $(pwd)/ssh/rc $HOME/.ssh/rc
else
  ln -s $(pwd)/ssh $HOME/.ssh
fi

if [ -f $HOME/.bashrc ]; then
  mv $HOME/.bashrc $HOME/.bashrc_original
fi

ln -s $(pwd)/bashrc $HOME/.bashrc
