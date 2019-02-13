# ALIAS

# GIT
alias gs="git status"
alias gd="git diff"

# docker
alias dc="docker-compose"

function pushit() {
 bnch=$(git branch | grep \* | cut -d ' ' -f2)
 git add . && git commit -m "$1" && git push origin $bnch
}

function pullit() {
 bnch=$(git branch | grep \* | cut -d ' ' -f2)
 git push origin $bnch
}

function reload() {
  source ~/.profile
}

. /usr/local/etc/profile.d/z.sh

