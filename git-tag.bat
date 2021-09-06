@echo off
git add -A
set /p msg="Git message: "
echo "Git status:"
git status
git fetch
git commit -m %msg%
set /p tag="Git tag: "
git tag %tag%
echo "Git push..."
git push
git push --tag
echo "Done."
