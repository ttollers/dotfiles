export PATH=~/Library/Python/3.6/bin:$PATH

# ALIAS
alias gs="git status"
alias gd="git diff"

function pushit() {
 bnch=$(git branch | grep \* | cut -d ' ' -f2)
 git add . && git commit -m "$1" && git push origin $bnch
}

function pullit() {
 bnch=$(git branch | grep \* | cut -d ' ' -f2)
 git push origin $bnch
}

