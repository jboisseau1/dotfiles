# alias add="git add"
alias branch="git branch"
alias checkout="git checkout"
# alias commit="feature commit"
alias pop="git stash pop --index"
alias pull="git pull"
alias push="git push"
alias master="git checkout master"
# alias develop="git checkout develop"
# alias diff="clear; git diff -w"
# alias linuxdiff="/usr/bin/diff"
# alias sysdiff="/usr/bin/diff"
# alias log="git log --graph --decorate --abbrev-commit --pretty=oneline"
# alias log="git log --graph --date=short --pretty=format:'%C(yellow)%h %C(white)%ad %C(black)[%C(green)%an%C(black)] %C(blue)%s%C(yellow)%d'"
alias stash="git stash save"
# alias status="git status; echo; echo STASH:; git stash list; echo"
alias ss="npm start"
alias a='git add'
alias c='feature commit'
alias d='clear; git diff -w'
alias l="git log --graph --date=short --pretty=format:'%C(yellow)%h %C(white)%ad %C(black)[%C(green)%an%C(black)] %C(blue)%s%C(yellow)%d'"
alias m='feature merge'
alias r='feature rebase'
alias s='git status; echo; echo STASH:; git stash list; echo'
alias x='xgrep'
alias cont="git rebase --continue"
#alias gs="git status"


alias sfind='find . -not \( -type d -name .git -prune \) -not \( -type d -name node_modes -prune \) -and \( -type f \)|sort -f'
alias sgrep='find . -not \( -type d -name .git -prune \) -not \( -type d -name node_modes -prune \) -and \( -type f \)|sort -f|xargs grep --color=always'
alias cgrep='grep --color=always'
alias vgrep='grep -v'

function get_feature_commands()
{
  if [ -z $2 ] ; then
    COMPREPLY=(`feature tab`)
  else
    COMPREPLY=(`feature tab $2`)
  fi
}

complete -F get_feature_commands feature
