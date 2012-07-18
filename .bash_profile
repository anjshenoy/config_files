PATH=$PATH:~/bin/mvim
export EDITOR=mvim
export BUNDLER_EDITOR=mvim
export NODE_PATH=/usr/local/lib/node_modules

set -o vi
alias cl="clear"
alias .profile=". ~/.bash_profile"
alias v_profile="vi ~/.bash_profile"
alias v="vim ."

#unicorn
alias uwatch="watch -n 0.2 \"ps -ef | grep unicorn | grep -v grep\""
alias ustop="/etc/init.d/unicorn stop"
alias ustart="/etc/init.d/unicorn start"
#alias urestart="/etc/init.d/unicorn restart" kills only child processes but not the parent.
alias urestart="ustop && sleep 5 && ustart"

#git
alias ginit="git init"
alias gst="git st"
alias gbr="git br"
alias gdi="git di"
alias gadd="git add"
alias gl="git l"
alias gl="git l --author=anjshenoy@gmail.com"
alias gsl="git shortlog"
alias gslme="git shortlog --author=anjshenoy@gmail.com"
alias gcom="git co master"
alias gco="git co"
alias gshow="git show"
alias gci="git ci"
alias gf="git fetch"
alias gfplom="gfetch && gplom"
alias gplo="git pull origin"
alias gplom="git pull origin master"
alias gplrom="git pull --rebase origin master"
alias gcomfrb_sb="gcom && && gfplom && gco"
alias gpshom="git push origin master"
alias spp="git stash && git pull && git stash pop"
alias gspop="git stash pop"
alias gspush="git spush"
alias grh="git reset HEAD"
alias grm="git rm"
alias gmv="git mv"
alias grb-im="git rebase -i master"
alias top_log="git log | head -1"
alias show_top="top_log | awk \'{print $2}\' | xargs git show"

#rails
alias rlc="be rake log:clear"
alias ts="thin start"
alias rs="rails server"
alias rg="rails generate"
alias rd="rails destroy"
alias rc="be rails console"
alias rgm="rg model"
alias rgc="rg controller"
alias b="bundle"
alias be="b exec"
alias bc="b check"
alias bi="b install"
alias bu="b update"
alias bo="b open"
alias bs='b show'

#cap tasks
alias deploystage="cap staging && cap deploy"

#other
alias ls="ls -G"
alias ll="ls -la"
alias ld="ls -la | grep ^d" # list dirs only
alias lf="ls -la | grep -v ^d" #list files only

#dirs
alias cdchat="cd ~/chat_server"
alias ~="cd ~"

function cdgem(){
 cd `bs $1`
}

CYAN="\[\e[0;36m\]"
DARK_GREY="\[\e[0;30m\]"
RED="\[\e[0;31m\]"
BLACK="\[\e[0;39m\]"
WHITE="\[\e[0;37m\]"
GREEN="\[\e[0;32m\]"

parse_git_branch(){
  git branch 2>/dev/null| sed -n '/^\*/s/^\* //p'
}
#white background
#export PS1="$CYAN\u@\h:\w $DARK_GREY[\D{%H:%M}]$RED \$(parse_git_branch)$CYAN ➤ $BLACK"

#black background
export PS1="$CYAN\u@\h:\w $RED[\D{%H:%M}]$YELLOW \$(parse_git_branch)$CYAN ➤ $WHITE"

source ~/.bashrc

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
