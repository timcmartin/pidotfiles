alias hosts='sudo vim /etc/hosts'
alias v.='vim .'
alias v='vim'
alias vimrc='vim ~/.vimrc'
alias aliasedit='vim ~/.bash_aliases'
alias please=sudo
alias psack='ps aux | ack'
alias psgrep='ps aux | grep'
alias rebash='START_DIR=`pwd`;cd ..;source ~/.bash_aliases;cd $START_DIR; c; l'

# Directory Navigation
alias ...='cd ../..'
alias ..='cd ..'
alias ::='cd ../..'
alias :::='cd ../../..'
alias ::::='cd ../../../..'
alias :::::='cd ../../../../..'
alias ~='cd ~'
alias b='cd -'
alias c=clear
alias d='ls -bF'
alias l='exa -a --long --header --git'
alias la='exa -a'
alias ll='exa -l --git'
alias ls='ls -G'
alias lsa='ls -lah'

[ ! -f "$HOME/.bash_aliases.local" ] || . "$HOME/.bash_aliases.local"
