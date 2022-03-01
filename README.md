# Useful Git Aliases
A compilation of git aliases I've found useful or otherwise interesting.

A couple of shell scripts are included that will add or remove all of these commands to your global git config. Comment out/remove any of the irrelevant commands and execute by opening a GIT bash window at this file and running `sh script/setAliases.sh` or `sh script/removeAliases.sh`.

You can read more about how to add git aliases [here](https://git-scm.com/book/en/v2/Git-Basics-Git-Aliases).

Table of Contents here

## History
### tree

```bash
    git config --global alias.tree 'log --graph --decorate --pretty=oneline --abbrev-commit'
```
Will draw a tree of commits from your current HEAD, with colours to denote branching as well as where a certain branch has ended.

You can specify a `--no-merges` flag to flatten the history and remove merge commits.

---

## Committing

### uncommit

```bash
    git config --global alias.uncommit 'reset HEAD^'
```

Removes the most recent commit from history and puts it back as an unstaged change. Useful if you accidentally commit a file or mistype your commit message.

This will cause trouble if you attempt to remove pushed commits from the repository. If you need to remove a pushed commit should use [`git revert`](https://git-scm.com/docs/git-revert).

---

## Misc.
### leaderboard 

```bash
    git config --global alias.leaderboard 'shortlog -sn --all --no-merges'
```
Tallies up the commits of users on a repository and lists their name alongside their commit count, in descending order. Useful to see who commits often!


