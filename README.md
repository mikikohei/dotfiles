dotfiles
========

My personal configuration

Prepare
--------

* Homebrew

```
 $ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
 $ brew doctor
 $ brew update
```

* Zsh

```
 $ /brew install zsh
 $ sodo vi /etc/shells (最終行に/usr/local/bin/zshを追加)
 $ chsh -s /usr/local/bin/zsh
```


Install
--------

```
 $ git clone git://github.com/mikikohei/dotfiles.git ~/dotfiles
```


Setup
--------

```
 $ cd ~/dotfiles
 $ ./setup.sh
 $ brew bundle
```
This script create a symbolic link as following:

* .vim          -> vimfiles
* .vimrc        -> dotfiles/.vimrc
* .tmux.conf    -> dotfiles/.tmux.conf
* .zshrc       -> dotfiles/.zhrc
* .zprofile    -> dotfiles/.zprofile
