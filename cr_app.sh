#!/bin/bash

# create app directory
mkdir apps/$1

# run startapp
python manage.py startapp apps_$1 apps/$1

# cr urls.py
touch apps/$1/urls.py
echo "from django.urls import path" >> apps/$1/urls.py
echo "" >> apps/$1/urls.py
echo "urlpatterns = []" >> apps/$1/urls.py