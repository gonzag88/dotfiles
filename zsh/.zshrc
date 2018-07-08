export TERM="xterm-256color"

export DOTFILES=$HOME/.dotfiles

# Path to your oh-my-zsh installation.
export ZSH=/Users/gonzalo/.oh-my-zsh

# Android configuration
export ANDROID_HOME=/Users/gonzalo/Library/Android/sdk/
export PATH=${PATH}:/Users/gonzalo/Library/Android/sdk/platform-tools:/Users/gonzalo/Library/Android/sdk/tools

# Set JAVA_HOME variable
export JAVA_HOME=$(/usr/libexec/java_home)

# RabbitMQ
export PATH=/usr/local/sbin:$PATH

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
plugins=(git git-flow ruby rake rails colorize zsh-autosuggestionszsh tmux)


# -------------------- User configuration ----------------------------

# Preferred Editor
export EDITOR='vim'

# export MANPATH="/usr/local/man:$MANPATH"

# Set path variable
#
# export  PATH="/usr/local/sbin:/Users/gonzalo/.rbenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$HOME/.rbenv/bin:$PATH"
PATH="$HOME/.rbenv/shims:$PATH"

# Add /usr/local/sbin
#
if [[ -d /usr/local/sbin ]]; then
  export PATH=/usr/local/sbin:$PATH
fi

# Set a global .ignore file to use it with CtrlP and SilverSearcher under VIM
alias ag='ag --path-to-ignore ~/.ignore'

# You may need to manually set your language environment
# export LANG=en_US.UTF-8


source $ZSH/oh-my-zsh.sh

# add /usr/local/sbin
if [[ -d /usr/local/sbin ]]; then
  export PATH=/usr/local/sbin:$PATH
fi

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

export PATH="/usr/local/opt/qt@5.5/bin:$PATH"
export PATH="$(brew --prefix qt@5.5)/bin:$PATH"
