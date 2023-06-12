#!/bin/bash

# Create Django Project
django-admin startproject _project .
sleep 2

# Create Django additional File(s) and Folder(s)
touch _project/.env
mkdir _project/static
mkdir _project/static/css
mkdir _project/static/images
mkdir _project/static/js
mkdir apps
mkdir media
# mkdir templates

# Add info to .env
echo "DJANGO_SECRET_KEY=" >> _project/.env
echo "DEBUG=True" >> _project/.env

# Add internal/external apps to settings
sed -i '/"django.contrib.staticfiles",/a\ \ \ \ # internal apps\n\ \ \ \ # external apps' _project/settings.py