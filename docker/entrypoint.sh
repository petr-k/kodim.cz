#!/bin/sh

echo "Running app in production mode!"
nginx && uwsgi --ini /uwsgi.ini
