#!/bin/bash
# remove remote
git remote remove origin
sleep 1

# remove mynotes and vscode from cached
git rm mynotes.txt --cached
git rm -r .vscode/ --cached

git commit -m "remove mynotes.txt and .vscode from cached"

# add mynotes.txt and .vscode/
echo "mynotes.txt" >> .gitignore
echo ".vscode/" >> .gitignore

git commit -m "add mynotes.txt and .vscode to .gitignore"


# install all requirements with pipenv
pipenv install
sleep 2
pipenv install --dev
sleep 2

# activate env
pipenv shell
sleep 2

