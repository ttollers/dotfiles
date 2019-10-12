# ALIAS

# docker
alias dc="docker-compose"

# kubernetes
alias k="kubectl"

export HELM_HOST=:44134
alias tiller-up="tiller -listen=localhost:44134 -storage=secret -logtostderr"

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

