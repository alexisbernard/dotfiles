#! /bin/sh

export HISTSIZE=100000
export HISTFILESIZE=100000

export PS1='\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\u@\h:\w\033[0m$(__git_ps1)\033[0m\$ '

alias rtest="ruby -I test"
alias brb="bundle exec ruby"
alias brk="bundle exec rake"
alias brbtest="bundle exec ruby -I test"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

