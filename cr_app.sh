#!/bin/bash

# Set Variable
APP_NAME=$1

# create app directory
mkdir apps/${APP_NAME}

# run startapp
python manage.py startapp apps_${APP_NAME} apps/${APP_NAME}
sleep 1

# cr urls.py
touch apps/${APP_NAME}/urls.py
echo "from django.urls import path" >> apps/${APP_NAME}/urls.py
echo "" >> apps/${APP_NAME}/urls.py
echo "urlpatterns = [" >> apps/${APP_NAME}/urls.py
echo "  path(\"\")," >> apps/${APP_NAME}/urls.py
echo "]" >> apps/${APP_NAME}/urls.py
sleep 1

# cr templates app
mkdir templates/${APP_NAME}
sleep 1

# cr forms.py
touch apps/${APP_NAME}/forms.py
echo "from django import forms" >> apps/${APP_NAME}/forms.py
sleep 1

# cr views.py
rm apps/${APP_NAME}/views.py
touch apps/${APP_NAME}/views.py
echo "from django.views import View" >> apps/${APP_NAME}/views.py
echo "from django.shortcuts import render" >> apps/${APP_NAME}/views.py

# update apps_ to apps.
sed -i "s/apps_${APP_NAME}/apps.${APP_NAME}/gi" apps/${APP_NAME}/apps.py

# add installed apps
sed -i "/internal apps/a\ \ \ \ \"apps.${APP_NAME}\"," _project/settings.py