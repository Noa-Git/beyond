# !/bin/bash -ex
# The -e option would make ot script exit with an error if any command
# fails while the -x option makes verbosely it output ehat it does

# install Pipenv, the -n option makes sudo fail instead of asking for a 
# passoword if we don't have sufficient privileges to run it
sudo -n dnf install -y pipenv

cd /vagrant
# Install dependencies with Pipenv
pipenv sync

# Run database migrations
pipenv run python manage.py migrate

# run our app. Nohup and "&" are used to let the setup script finish
#while our app stays up. The app logs will by collected in nohup.output

nohup pipenv run python manage.py runserver 0.0.0.0:8000 &