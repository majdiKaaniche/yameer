#!/bin/bash
RUN_PORT="8010"

cd yameer;
/opt/venv/bin/python manage.py migrate --no-input
/opt/venv/bin/gunicorn yameer.wsgi --bind "0.0.0.0:${RUN_PORT}" --daemon


nginx -g 'daemon off;'
