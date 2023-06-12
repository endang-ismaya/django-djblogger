#!/bin/bash

# create app directory
mkdir apps/$1

# run startapp
python manage.py startapp apps_$1 apps/$1
sleep 1

# cr urls.py
touch apps/$1/urls.py
echo "from django.urls import path" >> apps/$1/urls.py
echo "" >> apps/$1/urls.py
echo "urlpatterns = [" >> apps/$1/urls.py
echo "  path(\"\")," >> apps/$1/urls.py
echo "]" >> apps/$1/urls.py
sleep 1

# cr templates app
mkdir templates/$1
sleep 1

# cr forms.py
touch apps/$1/forms.py
echo "from django import forms" >> apps/$1/forms.py
sleep 1

# cr views.py
rm apps/$1/views.py
touch apps/$1/views.py
echo "from django.views import View" >> apps/$1/views.py
echo "from django.shortcuts import render" >> apps/$1/views.py

# update apps_ to apps.
sed -i "s/apps_$1/apps.$1/gi" apps/$1/apps.py

# add installed apps
sed -i '/internal apps/a\ \ \ \ "apps.$1",' _project/settings.py
