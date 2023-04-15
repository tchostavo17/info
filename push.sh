#!/bin/bash

rep_name=${PWD##*/}

git config user.name "tchostavo17"
git config user.email "tchostavo17@proton.me"

git remote set-url origin git@ph:tchostavo17/$rep_name.git

git add *

git commit -m "Commit"

git push