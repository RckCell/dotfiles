#
# ~/.bash_profile
#

export EDITOR="vim"

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [[ -z $DISPLAY && $XDG_VTNR -eq 1  ]];then
    startx
fi
