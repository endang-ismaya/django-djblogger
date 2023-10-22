#!/bin/bash

echo "from apps.blog.factory import PostFactory;x = PostFactory.create_batch(100)" | python manage.py shell