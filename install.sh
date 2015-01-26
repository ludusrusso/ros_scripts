#!/bin/bash
############################
# .make.sh
# This script creates symlinks
############################

########## Variables

files="cat_make"    # list of files to symlink

##########


# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
  echo "Creating symlink to $file in /usr/local/bin."
  ln -sf $PWD/scripts/$file /usr/local/bin
done

source ~/.bashrc
