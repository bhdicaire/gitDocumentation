## How to change remote URLs from HTTPS to SSH

1. List your existing remotes
```
git remote -v
```
> origin  https://github.com/bhdicaire/REPOSITORY.git (fetch)
> origin  https://github.com/bhdicaire/REPOSITORY.git (push)

2. Change your existing remotes
```git remote set-url origin git@github.com:bhdicaire/REPOSITORY.git
```
3. Confirm the modification
```
git remote -v
```
> origin  git@github.com:bhdicaire/REPOSITORY.git (fetch)
> origin  git@github.com:bhdicaire/REPOSITORY.git (push)

### Troubleshooting

1. Confirm that you correctly typed it
2. Check the access right on [gitHub](https://docs.github.com/en/github/using-git/changing-a-remotes-url#switching-remote-urls-from-https-to-ssh) and with your [local SSH items](../ssh.md)


## How to Rename the master branch to main

1. Rename the "master" branch in your _local_ Git repositories

```
git branch -m master main
git status
```

Git status should confirm that the local branch has been renamed.

```
On branch main
Your branch is up to date with 'origin/master'.

nothing to commit, working tree clean
```
2. Create a new branch on the remote named "main"
command:

```
git push -u origin main
```
3. Change the default branch on [github](https://docs.github.com/en/github/administering-a-repository/changing-the-default-branch)
4. Delete the "master" branch on the remote

```
git push origin --delete master
```

