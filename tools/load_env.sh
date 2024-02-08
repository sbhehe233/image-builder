#!/bin/bash 
[ -f "$@" ] && eval "echo \"$(cat $@)\"" | awk '{ sub ("\\\\$", " "); printf " --build-arg %s", $0  } END { print ""  }' 
