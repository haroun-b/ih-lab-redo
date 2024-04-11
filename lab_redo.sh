#!/bin/bash

set -e

fork_url=$1
lab_name=$(basename $fork_url | sed 's/\.git//')

echo "Are you sure you want to redo this lab? (y/n)"
read -r response

if [ "$response" != "y" ]; then
    echo "Exiting..."
    exit 1
fi

git clone $fork_url
cd $lab_name

git switch old-solution >/dev/null 2>&1 && \
git pull origin old-solution
git switch master

if git rev-parse --verify --quiet old-solution >/dev/null 2>&1; then
  echo "An old-solution branch already exists!"
  echo "Exiting..."
  exit 1
fi

upstream_url=$(dirname $(dirname $fork_url))/ironhack-labs/$(basename $fork_url)

git remote add upstream $upstream_url
git fetch upstream 
git checkout -b old-solution
git push --set-upstream origin old-solution
git switch master
git reset --hard upstream/master
git push origin master --force