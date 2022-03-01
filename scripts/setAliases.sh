#!/bin/bash
git config --global alias.tree 'log --graph --decorate --pretty=oneline --abbrev-commit'
echo 'alias.tree set'
git config --global alias.uncommit 'reset HEAD^'
echo 'alias.uncommit set'
git config --global alias.leaderboard 'shortlog -sn --all --no-merges'
echo 'alias.leaderboard set'
