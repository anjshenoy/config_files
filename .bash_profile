# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#from .bash_profile
alias cl="clear"
alias .profile="source ~/.zshrc"
alias vprofile="vi ~/.zshrc"
alias tagit="ctags -R --exclude=public ."

#git
alias ginit="git init"
alias gcl="git cl"
alias gst="git st"
alias gbr="git br"
alias gbrl="gbr --sort=-committerdate"
alias gdi="git di"
alias gadd="git add"
alias gl="git l"
alias gltop='gl -n 1'
alias glme="git shortlog --author=anjshenoy@gmail.com"
alias gcom="git co main"
alias gco="git co"
alias gcob="gco -b"
alias gshow="git show"
alias gci="git ci"
alias gcim="git ci --amend"
alias gf="git fetch"
alias gfplom="gf && gplom"
alias gplo="git pull origin"
alias gpl="git pull"
alias gplom="git pull origin main && by && rails db:migrate"
alias gplor="git pull origin --rebase "
alias gpshfo="git push -f origin"
alias gpsho="ylt && rcop && git push origin"
alias gpshof="gpsho -f"
alias gpshom="gpsho main"
alias gspop="git stash pop"
alias gsl="git stash list"
alias gspush="git stash push"
alias grh="git reset HEAD"
alias grh1="git reset HEAD~1"
alias gbrd="gbr -D"
alias grs="git restore --staged"

alias gcp="git cherry-pick"
alias grm="git rm"
alias gmv="git mv"
alias grbi="git rebase -i main"
alias grb="git rebase"
alias grbm="grb main"
alias top_log="git log | head -1"
alias show_top="top_log | awk \'{print $2}\' | xargs git show"
alias gahead="git ahead"
alias grt="git revert"
alias gshowtop="gl -p -1"


function gpshb(){
  gpsho "${1}"
}

#rails
alias rlc="be rake log:clear"
alias rc="be rails console"
alias mig="be rails db:migrate"
alias recreate_db="rails db:drop && rails db:prepare && rails db:example_data"
alias recreate_test_db= "rake db:drop RAILS_ENV=test && rake db:create RAILS_ENV=test"
alias b="bundle"
alias be="b exec"
alias bc="b check"
alias bi="b install"
alias bu="b update"
alias bo="b open"
alias bs='b show'
alias bshow='b show'
alias by='b && yarn'
alias bym="by && migrate"
alias yl="yarn lint --quiet --format junit"
alias yt="yarn tsc"
alias ylt="yl && yt"
alias rcop="bundle exec rubocop . -P --format progress --format junit --display-only-failed"
alias brakeman="bundle exec brakeman --format junit"
alias prechk="ylt && rcop"
alias yj="yarn jest"
alias yltj="ylt && yj"
alias gqls=" rails graphql:schema:idl &&  yarn graphql:generate --watch app/javascript/**/*.graphql"


#other
alias ls="ls -G"
alias ll="ls -la"
alias ld="ls -la | grep ^d" # list dirs only
alias lf="ls -la | grep -v ^d" #list files only

#app specific
alias start="foreman start -f Procfile.dev"
alias start_test="foreman start -f Procfile.test"

#grep
alias gp="grep -Rn --color"
function gpstd(){
  gp "${1}" app config lib script test vendor
}

function cdgem(){
 cd `bs $1`
}

export PATH="~/.rbenv/bin:/opt/homebrew/bin:$PATH"
echo $PATH

#To open gems
export EDITOR="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"

eval "$(rbenv init - zsh)"
 export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

nvm use 18
rbenv global 3.2.2
rbenv versions
set -o vi
