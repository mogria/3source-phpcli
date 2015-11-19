#!/bin/bash

# ensure all files created have write permissions for the group too.
# all docker containers used for this project use the www-data user.
# This ensures that the development user (if he's part of the www-data
# group) can edit the files created by artisan, etc.

umask 002
exec "$@"
