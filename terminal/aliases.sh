# ALIAS

# docker
alias dc="docker-compose"

## kubectl 
# General
alias k="kubectl"
alias kex='kubectl exec -i -t'
alias kl='kubectl logs'
alias kg='kubectl get'
alias kpf='kubectl port-forward'
alias kd='kubectl describe'
alias kcgc='kubectl config get-contexts'
alias kcuc='kubectl config use-context'

# get and describe
alias kdp='kubectl describe pod'
alias kgp='kubectl get pods'

alias kgs='kubectl get service'
alias kds='kubectl describe service'

alias kdc='kubectl describe configmap'
alias kgc='kubectl get configmap'

# switch contexts
alias kn='k config set-context --current --namespace'

alias fsync='fluxctl sync --k8s-fwd-ns flux'

# Terraform
alias tf="terraform"
alias tfi="terraform init"
alias tfp="terraform plan"
alias tfa="terraform apply"
