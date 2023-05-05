#!/bin/bash

echo "Collect static files"
python /app/manage.py collectstatic --no-input

echo "Apply database migrations"
python /app/manage.py migrate

echo "Launch gunicorn"
gunicorn api_yamdb.wsgi --bind 0:8000
