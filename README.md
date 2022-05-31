# https://serverfault.com/questions/503269/executing-curl-upon-git-push

in .git/hooks
add post-commit file

content:

#!/bin/sh

branch=$(git rev-parse --symbolic --abbrev-ref $1)
echo Update pushed to branch $branch

curl http://localhost:8000/git/notifyCommit?url=job&branch=$branch