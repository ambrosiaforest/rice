#!/bin/zsh
setopt autocd
stty stop undef

# Enables history
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=$XDG_CACHE_HOME/zsh/history


# Set aliases
alias cp="cp -r"
alias shutdown="doas shutdown"
alias reboot="doas reboot"
alias poweroff="doas poweroff"
alias vi="nvim"

# Set tab completions
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Set prompt
PS1="%F{magenta}%n@%m%f %F{blue}%~%f %F{magenta}$%f "
