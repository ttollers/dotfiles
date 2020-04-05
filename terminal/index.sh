#!/bin/bash

export PATH=$HOME/bin:$PATH

function reload() {
  source ~/.profile
}

. /usr/local/etc/profile.d/z.sh

source $(dirname $0)/aliases.sh
source $(dirname $0)/personal_aliases.sh
source /usr/local/etc/profile.d/z.sh

autoload -Uz compinit
compinit

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

NVIM_LISTEN_ADDRESS=/tmp/nvimsocket

# fix ack perl issue
export LC_CTYPE=en_GB.UTF-8
export LC_ALL=en_GB.UTF-8

source <(kubectl completion zsh)
