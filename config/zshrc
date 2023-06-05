setopt autocd     # Automatically cd into typed directory.
stty stop undef       # Disable ctrl-s to freeze terminal.

# Enables history
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/zsh/history

# Set aliases
alias ls="ls -hN --color=auto --group-directories-first"
alias grep="grep --color=auto"
alias diff="diff --color=auto"
alias cp="cp -r"
alias ll="ls -lA"
alias shutdown="doas shutdown"
alias reboot="doas reboot"
alias poweroff="doas poweroff"
alias vim="nvim"

# Set tab completions
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

. ${XDG_CONFIG_HOME}/zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null

# Set prompt
PS1="%F{magenta}%n@%m%f %F{blue}%~%f %F{magenta}$%f "
