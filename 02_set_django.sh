#!/bin/bash

# Create Django Project
django-admin startproject _core .
sleep 2

# Create Django additional File(s) and Folder(s)
touch _core/.env
mkdir _core/static
mkdir _core/static/css
mkdir _core/static/images
mkdir _core/static/js
mkdir apps
mkdir media
# mkdir templates

# Add info to .env
echo "DJANGO_SECRET_KEY=" >> _core/.env
echo "DEBUG=True" >> _core/.env

# Add internal/external apps to settings
sed -i '/"django.contrib.staticfiles",/a\ \ \ \ # internal apps\n\ \ \ \ # 3rd party apps' _core/settings.py