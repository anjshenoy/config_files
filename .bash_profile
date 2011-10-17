set -o vi
alias cap="ssh capuser@anjali.posterdev.com"
alias a11="ssh -p 52222 anjali@admin11.posterous.com"

alias c="clear"
alias ll="ls -la --color"
alias ld="ls -la --color | grep ^d" # list dirs only
alias lf="ls -la --color | grep -v ^d" #list files only
alias .profile=". ~/.bash_profile"
alias v_profile="vi ~/.bash_profile"

alias cd_post="cd ~/git/posterous"
alias cdt="cd ~/git/tattle"
alias cd_log="cd_post && cd log"
alias vimp="cd_post && vim ."
alias vimt="cdt && vim ."
alias v="vim ."

#unicorn
alias uwatch="watch -n 0.2 \"ps -ef | grep unicorn | grep -v grep\""
alias ustop="/etc/init.d/unicorn stop"
alias ustart="/etc/init.d/unicorn start"
#alias urestart="/etc/init.d/unicorn restart" kills only child processes but not the parent.
alias urestart="ustop && sleep 5 && ustart"

#logs
alias dev_log="cd_log; ls -t devcloud* | head -1"
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
alias spp="git stash && git pull && git stash pop"
alias gspop="git stash pop"
alias gspush="git spush"
alias grh="git reset HEAD"
alias top_log="git log | head -1"
alias show_top="top_log | awk \'{print $2}\' | xargs git show"

source ~/.bashrc

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

