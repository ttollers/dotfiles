#!/bin/bash

function reload() {
  source ~/.profile
}

. /usr/local/etc/profile.d/z.sh

source $(dirname $0)/aliases.sh
source $(dirname $0)/personal_aliases.sh

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
