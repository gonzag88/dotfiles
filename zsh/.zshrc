export TERM="xterm-256color"

export DOTFILES=$HOME/.dotfiles

# Path to your oh-my-zsh installation.
export ZSH=/Users/gonzalo/.oh-my-zsh

# Android configuration
export ANDROID_HOME=/Users/gonzalo/Library/Android/sdk/
# Agrega path a la variable PATH sólo si no existe
[[ ":$PATH:" != *":/Users/gonzalo/Library/Android/sdk/platform-tools:/Users/gonzalo/Library/Android/sdk/tools:"* ]] && export PATH="${PATH}:/Users/gonzalo/Library/Android/sdk/platform-tools:/Users/gonzalo/Library/Android/sdk/tools"
# export PATH=${PATH}:/Users/gonzalo/Library/Android/sdk/platform-tools:/Users/gonzalo/Library/Android/sdk/tools

# Set JAVA_HOME variable
export JAVA_HOME=$(/usr/libexec/java_home)

#
# Source all .zsh files inside of the zsh/ directory
# for config ($DOTFILES/zsh/*.zsh) source $config

#
# Set name of the theme to load
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs ssh aws)


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
#
plugins=(git git-flow history rake rails colorize zsh-autosuggestions tmux tmuxinator osx)


# -------------------- User configuration ----------------------------

# Preferred Editor
export EDITOR='vim'

# Set path variables
[[ ":$PATH:" != *":/usr/local/opt/qt@5.5/bin:"* ]] && export PATH="${PATH}:/usr/local/opt/qt@5.5/bin:"
# export PATH="$(brew --prefix qt@5.5)/bin:$PATH"

# Agrega usr/local/sbin sólo si no existe
[[ ":$PATH:" != *":/usr/local/sbin:"* ]] && export PATH="/usr/local/sbin:${PATH}"
# # Add /usr/local/sbin
# #
# if [[ -d /usr/local/sbin ]]; then
#   export PATH=/usr/local/sbin:$PATH
# fi

# [[ ":$PATH:" != *":$HOME/.rbenv/bin:"* ]] && export PATH="$HOME/.rbenv/bin:${PATH}"
# [[ ":$PATH:" != *":$HOME/.rbenv/shims:"* ]] && export PATH="$HOME/.rbenv/shims:${PATH}"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="$(pyenv root)/shims:$PATH"


# export MANPATH="/usr/local/man:$MANPATH"

# Set a global .ignore file to use it with CtrlP and SilverSearcher under VIM
alias ag='ag --path-to-ignore ~/.ignore'

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

source $ZSH/oh-my-zsh.sh

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# For using tmuxinator
source ~/.bin/tmuxinator.zsh

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
