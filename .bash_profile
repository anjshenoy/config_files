#alias cap="ssh capuser@anjali.posterdev.com"
#alias a11="ssh -p 52222 anjali@admin11.posterous.com"

set -o vi
alias c="clear"
alias ls="ls -G"
alias ll="ls -la"
alias ld="ls -la | grep ^d" # list dirs only
alias lf="ls -la | grep -v ^d" #list files only
alias .profile=". ~/.bash_profile"
alias v_profile="vi ~/.bash_profile"
alias v="vim ."

#---- POSTEROUS STUFF
#alias cd_post="cd ~/git/posterous"
#alias cdt="cd ~/git/tattle"
#alias cd_log="cd_post && cd log"
#alias vimp="cd_post && vim ."
#alias vimt="cdt && vim ."

# asha stuff
alias cd_r2="cd ~/workspace/ruby/rajdhani2"
alias vimr="cd_r2 && vim ."
alias cd_log="raj2 && cd log"

#unicorn
alias uwatch="watch -n 0.2 \"ps -ef | grep unicorn | grep -v grep\""
alias ustop="/etc/init.d/unicorn stop"
alias ustart="/etc/init.d/unicorn start"
#alias urestart="/etc/init.d/unicorn restart" kills only child processes but not the parent.
alias urestart="ustop && sleep 5 && ustart"

#logs
#alias dev_log="cd_log; ls -t devcloud* | head -1"
alias dev_log="cd_log; ls -t development.log"
alias clear_logs="cd_log && rake log:clear && echo \"\" > `dev_log`"
alias tail_dev="cd_log && tail -100f `dev_log`"
alias tail_test="cd_log && tail -100f test.log"
alias crt="clear_logs && urestart && sleep 10 && tail_dev"

#git
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
alias gfetch="git fetch"
alias gpo_r="git pull --rebase origin"
alias gpo="git pull origin"
alias gpom="git pull origin master"
alias gpshom="gist push origin"
alias gpshm="git push origin master"
alias spp="git stash && git pull && git stash pop"
alias gspop="git stash pop"
alias gspush="git spush"
alias grh="git reset HEAD"
alias top_log="git log | head -1"
alias show_top="top_log | awk \'{print $2}\' | xargs git show"

CYAN="\[\e[0;36m\]"
DARK_GREY="\[\e[1;30m\]"
RED="\[\e[0;31m\]"
BLACK="\[\e[0;39m\]"

parse_git_branch(){
  BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
  if [ -n "$BRANCH" ]; then
    echo $BRANCH
  else
    echo ""
  fi
}
export PS1="$CYAN\u:\w $DARK_GREY[\D{%H:%M}]$RED $(parse_git_branch)$CYAN ➤ $BLACK"

# for enabling color mode on os x
#export CLICOLOR=1
#export LSCOLORS=ExFxCxDxBxegedabagacad

source ~/.bashrc

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
