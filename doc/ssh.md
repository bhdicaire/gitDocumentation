## Switching remote URLs from HTTPS to SSH

1. Change the current working directory to your local project.
2. List your existing remotes in order to get the name of the remote you want to change:  git remote -v

$ git remote -v
> origin  https://github.com/USERNAME/REPOSITORY.git (fetch)
> origin  https://github.com/USERNAME/REPOSITORY.git (push)
Change your remote's URL from HTTPS to SSH with the git remote set-url command.

$ git remote set-url origin git@github.com:USERNAME/REPOSITORY.git
Verify that the remote URL has changed.

$ git remote -v
# Verify new remote URL
> origin  git@github.com:USERNAME/REPOSITORY.git (fetch)
> origin  git@github.com:USERNAME/REPOSITORY.git (push)


Generate a new SSH key:
```
ssh-keygen -t rsa -C "your_email@example.com"
```

Copy the contents of the file `~/.ssh/id_rsa.pub` to your SSH keys in your GitHub account settings (https://github.com/settings/keys).

Test SSH key:
```
$ ssh -T git@github.com
Hi developius! You've successfully authenticated, but GitHub does not provide shell access.
```

Change directory into the local clone of your repository (if you're not already there) and run:

```
git remote set-url origin git@github.com:username/your-repository.git
```

Now try editing a file (try the README) and then do:

```
$ git commit -am "Update README.md"
$ git push
```

You should not be asked for a username or password. If it works, your SSH key is correctly configured.

Clone can by direct via ssh
git clone git@github.com:username/your-repository.git

git remote set-url origin git@github.com:username/repository-name
