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

# Create Django Project
django-admin startproject _project .
sleep 2

# Create Django additional File(s) and Folder(s)
touch _project/.env
mkdir _project/static
mkdir apps
# mkdir templates
mkdir media

# Add info to .env
echo "DJANGO_SECRET_KEY=" >> _project/.env
echo "DEBUG=True" >> _project/.env
