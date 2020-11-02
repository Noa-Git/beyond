#!/bin/bash -ex
# The -e option would make out script exit with an error if any command
# fails while the -x option makes verbosely it output what is does

# Install Pipenv, the -n option makes sudo fail instead of asking for a
# password if we don't have sufficient privileges to run it
sudo -n dnf install -y pipenv

cd /vagrant 
# Install dependencies with Pipenv
pipenv sync

# run our app. nohup and "&" are used to let the setup script finish
# while our app stays up. The app logs will be collected in nohup.out 
nohup pipenv run python manage.py runserver 0.0.0.0:8000 &