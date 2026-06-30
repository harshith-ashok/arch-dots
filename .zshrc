# ------------------------------------------------------------------------------
# ~/.zshrc
# Minimal, clean development setup
# ------------------------------------------------------------------------------

export ZSH="$HOME/.oh-my-zsh"

# ------------------------------------------------------------------------------
# Theme
# ------------------------------------------------------------------------------
ZSH_THEME="minimal"

# ------------------------------------------------------------------------------
# Plugins
# ------------------------------------------------------------------------------
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# ------------------------------------------------------------------------------
# Editor
# ------------------------------------------------------------------------------
export EDITOR="nvim"
export VISUAL="nvim"

# ------------------------------------------------------------------------------
# Homebrew
# ------------------------------------------------------------------------------
export HOMEBREW_PREFIX="/opt/homebrew"
export HOMEBREW_CELLAR="/opt/homebrew/Cellar"
export HOMEBREW_REPOSITORY="/opt/homebrew"

# ------------------------------------------------------------------------------
# Node (NVM)
# ------------------------------------------------------------------------------
export NVM_DIR="$HOME/.nvm"

[[ -s "/opt/homebrew/opt/nvm/nvm.sh" ]] && source "/opt/homebrew/opt/nvm/nvm.sh"
[[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ]] && source "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

# ------------------------------------------------------------------------------
# Flutter
# ------------------------------------------------------------------------------
export PATH="$HOME/Developer/flutter/bin:$PATH"

# ------------------------------------------------------------------------------
# Cargo

export PATH="$HOME/.cargo/bin:$PATH"

# ------------------------------------------------------------------------------
# Local binaries
# ------------------------------------------------------------------------------
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.opencode/bin:$PATH"

# ------------------------------------------------------------------------------
# Homebrew binaries
# ------------------------------------------------------------------------------
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="/opt/homebrew/opt/mysql/bin:$PATH"
export PATH="/opt/homebrew/opt/mysql@8.4/bin:$PATH"
export PATH="/opt/homebrew/opt/mariadb@11.8/bin:$PATH"
export PATH="/opt/homebrew/opt/mariadb-connector-c/bin:$PATH"

# ------------------------------------------------------------------------------
# Ollama OpenAI Compatibility
# ------------------------------------------------------------------------------
export OPENAI_API_BASE="http://localhost:11434/v1"
export OPENAI_API_KEY="ollama"

# ------------------------------------------------------------------------------
# FZF
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# Aliases
# ------------------------------------------------------------------------------
alias c="code ."
alias v="nvim"
alias f="fzf"
alias btop="btop -t"
alias nf="neofetch"

alias dv="cd ~/Developer"

# ------------------------------------------------------------------------------
# Git
# ------------------------------------------------------------------------------
alias g="git"
alias gs="git status"
alias ga="git add"
alias gaa="git add ."
alias gc="git commit"
alias gcm="git commit -m"
alias gp="git push"
alias gl="git pull"
alias gd="git diff"
alias gb="git branch"
alias gco="git checkout"
alias lg="lazygit"
