#!/bin/sh

VIMRC=~/.vimrc
ZSHRC=~/.zshrc
#ZSH_PROFILE=~/.zprofile
DEIN_TOML=~/.dein.toml
DEIN_LAZY_TOML=~/.dein_lazy.toml
TIGRC=~/.tigrc

#=====================================
# backup function
backup()
{
  local TARGET=$1
  local BACKUP=`date +%Y%m%d%H%M%S`

  if [ -L $TARGET ]; then

    #if symbolic link, remove.
    rm -f $TARGET

  elif [ -f $TARGET -o -d $TARGET ]; then

    # backup
    mv $TARGET $TARGET.$BACKUP.bk
 
  else
    # Target is not exist.
    echo
  fi
}

#=====================================
# main

# set backup list 
CHECK_TARGET="$VIMRC $ZSHRC $DEIN_TOML $DEIN_LAZY_TOML $TIGRC"

# backup
for target in ${CHECK_TARGET[@]}
do
  backup $target
done

# cretae symbolic link
ln -s $PWD/.vimrc $VIMRC
ln -s $PWD/.zshrc $ZSHRC
#ln -s $PWD/.zprofile $ZPROFILE
ln -s $PWD/.dein.toml $DEIN_TOML
ln -s $PWD/.dein_lazy.toml $DEIN_LAZY_TOML
ln -s $PWD/.tigrc $TIGRC
