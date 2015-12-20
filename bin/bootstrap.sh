#!/bin/sh

current=$(pwd)

function link_dotfile {
  ln -s $current/$1 ~/.$1
  echo ".$1 linked to ~/.$1."
}

function move_and_link_dotfile {
  mv ~/.$1 ~/.$1.jahuang.old
  echo ".$1 backed up to .$1.jahuang.old"
  link_dotfile $1
}

files=(zshrc vimrc zlogin tmux.conf rspec railsrc irbrc gemrc ackrc ctags gitconfig vim-spell-en.utf-8.add)
for file in "${files[@]}"
do
  if [ -f ~/.$file ]; then
    while true; do
      read -p "Do you wish to overwrite ~/.$file?: (yn) " yn
      case $yn in
        [Yy]* )
          move_and_link_dotfile $file
          break;;
        [Nn]* )
          echo "$file skipped."
          break;;
        * ) echo "Yes or No only.";;
      esac
    done
  else
    link_dotfile $file
  fi
done

if ! [ -e ~/.config/powerline ]; then
  ln -s $current/config/powerline ~/.config/powerline
fi
