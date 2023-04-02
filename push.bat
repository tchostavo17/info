git config user.name "tchostavo17"
git config user.email "tchostavo17@proton.me"

for %%I in (.) do set CurrDirName=%%~nxI

git remote set-url origin git@ph:tchostavo17/%CurrDirName%.git

git add *

git commit -m "Commit"

git push