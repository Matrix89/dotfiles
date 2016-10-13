#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias l='ls'
alias ..='cd ..'
PS1='[\u@\h \W]\$ '
