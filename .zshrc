# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#
#stty -ixon
#
# Source Prezto.
#

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

#
# Disable flow control
#
setopt noflowcontrol

#
# Use better constrasting dir colours
#

if [[ -f "$HOME/.config/dir_colours" ]]; then
  eval $(dircolors -b "$HOME/.config/dir_colours")
fi

export LC_ALL=en_US.UTF-8
export VBOX_USB=usbfs
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
source /usr/bin/virtualenvwrapper.sh
source /usr/share/GNUstep/Makefiles/GNUstep.sh
source /home/wolf/.git-prompt.sh

#archlinuxinfo

#
# Personalised key bindings
#

autoload -Uz up-line-or-beginning-search
autoload -Uz down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey -M viins '^N' down-line-or-beginning-search
bindkey -M viins '^P' up-line-or-beginning-search
bindkey -M viins 'jj' vi-cmd-mode
