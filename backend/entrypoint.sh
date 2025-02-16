#!/bin/bash

# Wait for the database to be ready (useful in case the database container isn't up yet)
echo "Waiting for database..."
while ! nc -z $DB_HOST $DB_PORT; do
  sleep 1
done

# Run Django migrations
echo "Running migrations..."
python3 /app/fundoo/manage.py makemigrations
python3 /app/fundoo/manage.py migrate

# Run the Django app using Gunicorn
echo "Starting Gunicorn..."
cd /app/fundoo && gunicorn --bind 0.0.0.0:8000 fundoo.wsgi:application
