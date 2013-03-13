#! /bin/sh

export HISTSIZE=100000
export HISTFILESIZE=100000

alias brb="bundle exec ruby"
alias brk="bundle exec rake"
alias rbt="bundle exec ruby -I test"
alias remigrate="brk db:drop && brk db:create && brk db:migrate && brk db:seed"

# http://askubuntu.com/questions/65096/how-to-clean-previous-kernels-after-update
#alias remove-outdated-kernels="dpkg -l 'linux-*' | sed '/^ii/!d;/'\"$(uname -r | sed \"s/\(.*\)-\([^0-9]\+\)/\1/\")\"'/d;s/^[^ ]* [^ ]* \([^ ]*\).*/\1/;/[0-9]/!d' | xargs sudo apt-get -y purge"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

