#!/bin/bash

echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('endang.ismaya', 'endang.ismaya@gmail.com', 'pAssWOdR#123')" | python manage.py shell