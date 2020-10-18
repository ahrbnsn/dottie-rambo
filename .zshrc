# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

bindkey -M viins 'jk' vi-cmd-mode
#https://github.com/robbyrussell/oh-my-zsh/issues/1720#issuecomment-499812609
bindkey -M viins "${terminfo[kcuu1]}" up-line-or-beginning-search

# Path to your oh-my-zsh installation.
export ZSH=/Users/ashleyrobinson/.oh-my-zsh
export APP_DIR='/Applications'

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="agnoster"
ZSH_THEME="robbyrussell"

# rbenv instructions
#
# ruby-build installs a non-Homebrew OpenSSL for each Ruby version installed and these are never upgraded.

# To link Rubies to Homebrew's OpenSSL 1.1 (which is upgraded) add the following
# to your ~/.zshrc:
  # export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

# Note: this may interfere with building old versions of Ruby (e.g <2.4) that use
# OpenSSL <1.1.

# eval "$(rbenv init -)"
# export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

# source '/Users/ashleyrobinson/workspace/git-subrepo/.rc'
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.RT
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode)

source $ZSH/oh-my-zsh.sh

# Jump jump!

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# User configuration

export EDITOR='vim'

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias edit="nvim"
alias nv="nvim"
alias now="vercel"
alias gto="git-open"
alias be="bundle exec"
alias prune="git branch | grep -v 'master' | xargs git branch -D"
alias amendit="git commit --amend --no-edit"
alias gpof="git push origin head -f"
alias editzsh="vim ~/.zshrc && source ~/.zshrc"
alias sourcezsh="source ~/.zshrc"
alias rcop="git diff --name-only --cached | grep '\.rb' | xargs dox-do rubocop -a"
alias stash="git stash"
alias rewind="git reset HEAD~1"
alias gadd="git add -u"
alias guntracked="git add $(git ls-files -o --exclude-standard)"
alias sane="stty sane"
alias im="vim"
alias ip="curl -s http://checkip.dyndns.org/ | sed 's/[a-zA-Z<>/ :]//g'"
alias :qall="exit"
alias xit="exit"

# http://dev.scottw.com/zsh-rake-parameters
alias rake='noglob bundle exec rake'
#
# https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias configadd='config add -u'

# music stations
# http://www.cbc.ca/radio/includes/streams.html
alias playVLC="$APP_DIR/VLC.app/Contents/MacOS/VLC"
alias classical="playVLC https://stream.wqxr.org/wqxr-web?nyprBrowserId=7b3403ac942b4000 --intf=rc"
alias wnyc="$APP_DIR/VLC.app/Contents/MacOS/VLC http://www.wnyc.org/stream/wnyc-fm939/mp3.pls --intf=rc"
alias kexp="$APP_DIR/VLC.app/Contents/MacOS/VLC http://live-aacplus-64.kexp.org/kexp64.aac --intf=rc"
alias classical="$APP_DIR/VLC.app/Contents/MacOS/VLC https://www.wqxr.org/stream/wqxr/aac.pls --intf=rc"
alias radiooff="pkill -9 VLC"
alias cbc="$APP_DIR/VLC.app/Contents/MacOS/VLC http://cbc_r1_vcr.akacast.akamaistream.net/7/723/451661/v1/rc.akacast.akamaistream.net/cbc_r1_vcr --intf=rc"

alias chrome="open -a $APP_DIR/Google\ Chrome.app/"

export PATH="$HOME/bin:$PATH"

export GIT_EDITOR=vim

source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
w
. `brew --prefix`/etc/profile.d/z.sh

# recommended by brew doctor
export PATH="/usr/local/bin:$PATH"

[[ -f ~/.zshrc.secrets ]] && source ~/.zshrc.secrets

# doximity
eval "$("/Users/ashleyrobinson/work/dox-compose/bin/dox-init")"

alias goc="open https://github.com/doximity/campaigns/"
alias go='f() { open https://github.com/doximity/$1 };f'
alias startemquiet="dox-dc up -d campaigns doximity doximity-client-vue activities"
alias theworkers="dox-dc up campaigns-daemons campaigns-workers activities-workers activities-daemons"
alias campaignsup="dox-dc up campaigns campaigns-daemons campaigns-workers"
alias quietworkers="dox-dc up -d campaigns-daemons campaigns-workers activities-workers activities-daemons"
alias activitiesup="dox-dc up activities activities-workers activities-daemons"
alias doxup="dox-dc up doximity"
alias jdox="cd ~/work/doximity/"
alias dca="dox-dc up -d campaigns doximity activities"

# google's meet doesn't work so nicely in firefox. ushering in the next era of the fractured internet 
alias standup="chrome https://meet.google.com/cqa-syue-tki"
alias hangout="chrome"


alias cat="bat"


alias prod-chamber='AWS_REGION=us-east-1 CHAMBER_KMS_KEY_ALIAS=prod-parameter-store aws-vault exec dox-hipaa -- chamber'
alias rc="dox-do rails c"

alias rubofix='dox-do -T rubocop `git diff --name-only master` --display-cop-names --extra-details -a --force-exclusion'

# functions
#
#
function logs() {
  dox-dc logs -f "$1"
}

function startem() {
  if [ -z "$1" ]
  then
    dox-dc up campaigns doximity doximity-client-vue activities
  else
    dox-dc up campaigns doximity doximity-client-vue activities "$1"
  fi
}

function migrate() {
  dox-do -s doximity rails db:migrate;
  dox-do -s activities rails db:migrate;
  dox-do -s campaigns rails db:migrate;
}

function launch-app() {
    dox-dc up -d "$1"
  }

function launch-workers() {
    dox-dc up -d "$1"-workers "$1"-daemons
  }

function restart-vue() {
  dox-dc down;
  launch-app activities;
  launch-workers activities;
  launch-app campaigns;
  launch-workers campaigns;
  launch-app doximity-client-vue;
}

function restart-activities() {
  dox-dc down;
  launch-app activities;
  launch-workers activities;
  launch-app campaigns;
  launch-workers campaigns;
}
