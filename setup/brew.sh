#!/bin/bash

# ide setup
brew install neovim z zsh zsh-completions ack fzf

# scala
brew install --HEAD olafurpg/scalafmt/scalafmt

# misc
# postgress apps like psql and pg_dump
brew install libpq 
# brew doesn't link it
brew link --force libpq

brew tap weaveworks/tap
brew install weaveworks/tap/eksctl
