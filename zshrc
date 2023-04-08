# Enable colors and change prompt:
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

# Set tab completions
autoload -Uz compinit
zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1
compinit

# Set prompt
PS1="%F{magenta}%n@%m%f %F{blue}%~%f %F{magenta}$%f "


