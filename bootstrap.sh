#!/usr/bin/env bash

# Do the dirty work
echo "This will take a few minutes..."
sudo apt-get update -qq
sudo apt-get dist-upgrade -qq
sudo apt-get install -qq python-setuptools python3-dev build-essential python-pip python3-venv
echo "Adding database"
sudo apt install postgresql postgresql-contrib
