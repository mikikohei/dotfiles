# alias
#alias ls='exa'
#alias ll='exa -l'
#alias la='exa -aghHl'
#alias tree='exa -T'
alias ll='ls -l'
alias la='ls -la'
alias cat='ccat'
alias vi='vim'
alias diff='colordiff -u'
alias cp='cp -i'
alias rm='rm -i'
alias mkdir='mkdir -p'

# https://github.com/remind101/assume-role
alias assume-role='function(){eval $(command assume-role $@);}'

# reload zsh
alias reload='exec zsh -l'

# path
export PATH=$HOME/.nvim/bin:$PATH
export PATH=/usr/local/opt/openssl/bin:$PATH

# history
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000

function history-selection() {
    BUFFER=`history -n 1 | tail -r  | awk '!a[$0]++' | fzf`
    CURSOR=$#BUFFER
    zle reset-prompt
}
zle -N history-selection
bindkey '^R' history-selection

# load sshkey from KeyChain
ssh-add -K

# config home
export XDG_CONFIG_HOME=$HOME/dotfiles

# lang
export LANG=ja_JP.UTF-8

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_DEFAULT_OPTS='--height 100% --reverse --border'

# java
export JAVA_HOME=/Applications/"Android Studio.app"/Contents/jre/jdk/Contents/Home
PATH=${JAVA_HOME}/bin:${PATH}

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# android
export PATH=$HOME/Library/Android/sdk/platform-tools:$PATH

# option
setopt hist_ignore_dups
setopt hist_reduce_blanks
setopt extended_history
setopt share_history
setopt prompt_subst
setopt nonomatch
setopt print_eight_bit
setopt auto_pushd
setopt auto_cd
