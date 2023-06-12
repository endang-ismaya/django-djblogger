#!/bin/bash
# remove remote
git remote remove origin
sleep 1

# add mynotes.txt and .vscode/
echo "mynotes.txt" >> .gitignore
echo ".vscode/" >> .gitignore

# install all requirements with pipenv
pipenv install
sleep 2
pipenv install --dev
sleep 2

# activate env
pipenv shell
sleep 2


