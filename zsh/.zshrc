# ---

unsetopt beep

# Keybindings
bindkey -e
bindkey '^[[1;5A' history-search-backward  # Ctrl+Up
bindkey '^[[1;5B' history-search-forward   # Ctrl+Down

# Aliases
alias ls='ls --color'
alias ll='ls -alF'
alias dcu='docker compose up --build'
alias dcd='docker compose down'
alias per='sudo chown -R "$USER":"$(id -gn)" "$HOME/sh"'

# Shell history
HISTFILE="$HOME/.zhistory"
HISTSIZE=3000
SAVEHIST=$HISTSIZE

setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE # (start with space to prevent the command being saved in history)

# Completion
autoload -Uz compinit 
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' format '%d:'
zstyle ':completion:*' list-prompt '%SAt %p: Press Tab for more, or type a character%s'
zstyle ':completion:*' matcher-list '' '+m:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' menu select=2
zstyle ':completion:*' original true
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

eval "$(dircolors -b)"
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# Plugins
source "$HOME/.zplugins/powerlevel10k/powerlevel10k.zsh-theme"
source "$HOME/.zplugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$HOME/.zplugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# ---