# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme. Look in ~/.oh-my-zsh/themes/, optionally "random".
ZSH_THEME="aarontrostle"

if [[ -a ~/.localrc ]]
then
  source ~/.localrc
fi

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"
# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"
# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13
# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"
# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"
# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"
# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"
# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx ruby brew bundler rake heroku rails rvm python git-flow vagrant)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/Users/aarontrostle/anaconda/bin:/Users/aarontrostle/.rvm/gems/ruby-1.9.3-p392/bin:/Users/aarontrostle/.rvm/gems/ruby-1.9.3-p392@global/bin:/Users/aarontrostle/.rvm/rubies/ruby-1.9.3-p392/bin:/Users/aarontrostle/.rvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"

# This loads nvm and nvm bash completion
[[ -s /Users/aarontrostle/.nvm/nvm.sh ]] && . /Users/aarontrostle/.nvm/nvm.sh
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

# Travis gem
[ -f /Users/aarontrostle/.travis/travis.sh ] && source /Users/aarontrostle/.travis/travis.sh

# PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
