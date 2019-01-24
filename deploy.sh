#!/bin/bash

branch=master
if [ -n "$1" ]; then
    branch=$1
fi

root_path="$PWD"
git_path="$root_path/src/github.com/sero-cash/go-sero"
cd "$git_path"
git checkout $branch

sh update.sh
sh clean.sh
sh restart.sh
