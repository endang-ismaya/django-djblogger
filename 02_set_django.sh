#!/bin/bash

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