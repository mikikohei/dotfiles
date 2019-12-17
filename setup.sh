#!/bin/zsh

# backup
BACKUP_FILES=(.zshrc .gitconfig .gitignore_global .vimrc)

for file in ${BACKUP_FILES[@]}
do
  if [ -L $HOME/$file ]; then

    #if symbolic link, remove.
    rm -f $HOME/$file

  elif [ -f $HOME/$file -o -d $HOME/$file ]; then

    # backup
    mv $HOME/$file $HOME/$file.`date +%Y%m%d%H%M%S`

  else
    # Target is not exist.
    echo $HOME/$file 'is not exist.'
  fi
done

# setup prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# override .zpreztorc
mv ~/dotfiles/.zpreztorc ~/.zpreztorc

# update rc
echo "[ -f ~/dotfiles/.zshrc ] && source ~/dotfiles/.zshrc" >> ~/.zshrc

# cretae symbolic link
DOT_FILES=(.gitconfig .gitignore_global .vimrc .dein.toml .dein_lazy.toml)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done
