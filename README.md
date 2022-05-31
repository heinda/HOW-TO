# https://serverfault.com/questions/503269/executing-curl-upon-git-push

in .git/hooks
add post-commit file

content:
```
#!/bin/sh

branch="$(git rev-parse --abbrev-ref HEAD)"
echo Update pushed to branch $branch

curl http://localhost:8000/git/notifyCommit?url=job&branch=$branch
```

# create a new branch

As an example, let’s say that you want to create a new Git branch from the master branch named “feature”

To achieve that, you will run the “git checkout” command with the “-b” option and add “feature” as the branch name.
```
$ git checkout -b feature
Switched to new branch 'feature'
```