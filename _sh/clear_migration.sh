#!/bin/bash

# find migration.py
find . -path "*/migrations/*.py" -not -name "__init__.py" -delete
find . -path "*/migrations/*.pyc"  -delete

# remove db.sqlite3
rm db.sqlite3