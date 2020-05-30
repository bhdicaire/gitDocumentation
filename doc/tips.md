##  commit and release note


use det : operator before and after the keyword. : fish : ( 🐟 ) without spaces between : and fish

You can pull up the emoji keyboard by hitting:
* MacOS: <kbd>ctrl</kbd>+<kbd>⌘</kbd>+<kbd>space</kbd>
* Windows10: <kbd>Win</kbd>+<kbd>.</kbd>


## Switching remote URLs from HTTPS to SSH
Open Terminal.

Change the current working directory to your local project.

List your existing remotes in order to get the name of the remote you want to change.

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
