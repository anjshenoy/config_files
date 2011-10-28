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
alias gplo="git pull origin"
alias gplom="git pull origin master"
alias gpshom="git push origin master"
alias spp="git stash && git pull && git stash pop"
alias gspop="git stash pop"
alias gspush="git spush"
alias grh="git reset HEAD"
alias grb-im="git rebase -i master"
alias top_log="git log | head -1"
alias show_top="top_log | awk \'{print $2}\' | xargs git show"
alias gcofrbm_sb = "gcom && gfetch && gplom && gco"

CYAN="\[\e[0;36m\]"
DARK_GREY="\[\e[0;30m\]"
RED="\[\e[0;31m\]"
BLACK="\[\e[0;39m\]"

parse_git_branch(){
  git branch 2>/dev/null| sed -n '/^\*/s/^\* //p'
}
export PS1="$CYAN\u:\w $DARK_GREY[\D{%H:%M}]$RED \$(parse_git_branch)$CYAN ➤ $BLACK"

source ~/.bashrc

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
