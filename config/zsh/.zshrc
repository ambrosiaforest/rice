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

#vi mode
bindkey -v
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;
        viins|main) echo -ne '\e[5 q';;
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q'
preexec() { echo -ne '\e[5 q' ;}

# Set prompt
PS1="%F{magenta}%n@%m%f %F{blue}%~%f %F{magenta}$%f "
source $XDG_CONFIG_HOME/zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
