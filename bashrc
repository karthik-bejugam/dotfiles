#!/usr/bin/env bash
set     +o history

# source ~/.bash/paths
source ~/.bash/aliases

# From here on only for interactive shells
if [ "$PS1" ]; then 
  # source ~/.bash/prompt
  source ~/.bash/functions
  source ~/.bash/config
fi

set     -o history

function loadssh() {
  ssh 23.20.150.37
}
