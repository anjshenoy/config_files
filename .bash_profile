PATH=/usr/local/bin:$PATH:~/bin/mvim
export EDITOR=mvim
export BUNDLER_EDITOR=mvim

set -o vi
alias cl="clear"
alias .profile=". ~/.bash_profile"
alias vprofile="vi ~/.bash_profile"
alias tagit="ctags -R --exclude=public ."

#unicorn
alias uwatch="watch -n 0.2 \"ps -ef | grep unicorn | grep -v grep\""
alias ustop="/etc/init.d/unicorn stop"
alias ustart="/etc/init.d/unicorn start"
#alias urestart="/etc/init.d/unicorn restart" kills only child processes but not the parent.
alias urestart="ustop && sleep 5 && ustart"

#git
alias ginit="git init"
alias gcl="git cl"
alias gst="git st"
alias gbr="git br"
alias gdi="git di"
alias gadd="git add"
alias gl="git l"
alias gltop='gl -n 1'
alias gsl="git shortlog"
alias gslme="git shortlog --author=anjshenoy@gmail.com"
alias gcom="git co master"
alias gco="git co"
alias gshow="git show"
alias gci="git ci"
alias gcim="git ci --amend"
alias gf="git fetch"
alias gfplom="gf && gplom"
alias gplo="git pull origin"
alias gpl="git pull"
alias gplom="git pull origin master"
alias gplrom="git pull --rebase origin master"
alias gplro="git pull --rebase origin"
alias gpshfo="git push -f origin"
alias gcomfrb_sb="gcom && gfplom && gco"
alias gpshom="git push origin master"
alias grpshom="gplrom && gpshom"
alias spp="git stash && git pull && git stash pop"
alias gspop="git stash pop"
alias gslist="git stash list"
alias gss="git stash save"
alias gspush="git spush"
alias grh="git reset HEAD"
alias gcp="git cherry-pick"
alias grm="git rm"
alias gmv="git mv"
alias grb-im="git rebase -i master"
alias grb="git rebase"
alias grbm="grb master"
alias top_log="git log | head -1"
alias show_top="top_log | awk \'{print $2}\' | xargs git show"
alias gahead="git ahead"
alias grt="git revert"
alias gshowtop="gl -p -1"


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
alias bshow='b show'

#cap tasks
alias deploystage="cap staging && cap deploy"

#other
alias ls="ls -G"
alias ll="ls -la"
alias ld="ls -la | grep ^d" # list dirs only
alias lf="ls -la | grep -v ^d" #list files only

#vagrant
alias vbox='vagrant box'
alias vup='vagrant up --provider=aws'

#grep
alias gp="grep -Rn --color"
function gpstd(){
  gp "${1}" app config lib script test vendor
}

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

#TODO: this does not work. Yet
function gcle(){
  gcl "git@github.int.yammer.com:yammer/$1.git"
}

#black background
export PS1="$CYAN\u@\h:\w $GREEN[\D{%H:%M}]$RED \$(parse_git_branch)$CYAN ➤ $WHITE"

#export JAVA_HOME=/usr
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export EC2_HOME=~/ec2-api-tools-1.6.7.2

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
