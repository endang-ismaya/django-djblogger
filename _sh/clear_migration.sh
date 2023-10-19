#!/bin/bash

# find migration.py
find . -path "./apps/*/migrations/*.py" -not -name "__init__.py" -delete
find . -path "./apps/*/migrations/*.pyc" -delete

# remove db.sqlite3
rm db.sqlite3