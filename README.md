dotfiles
========

My personal configuration

Install
--------

```bash
 $ git clone git://github.com/mikikohei/dotfiles.git ~/dotfiles
```


Setup
--------

```bash
 $ cd ~/dotfiles
 $ ./setup.sh
 $ brew bundle
```
This script create a symbolic link as following:

* .vim          -> vimfiles
* .vimrc        -> dotfiles/.vimrc
* .screenrc     -> dotfiles/.screenrc
* .tmux.conf    -> dotfiles/.tmux.conf
* .bashrc       -> dotfiles/.bashrc
* .bash_profile -> dotfiles/.bash_profile
