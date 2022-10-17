#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
TOKEN="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" 
git clone https://$TOKEN@github.com/F4294MehmetTuylu/Private-capstone-my-project
cd /home/ubuntu/Private-capstone-my-project
apt install python3-pip -y
apt-get install python3.7-dev libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/Private-capstone-my-project/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80