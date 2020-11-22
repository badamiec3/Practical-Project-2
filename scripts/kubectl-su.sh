#! /bin/bash

pwd
aws configure set aws_access_key_id ${AWS_ACCESS_KEY}
aws configure set aws_secret_access_key ${AWS_SECRET_KEY}
sudo su ubuntu
whoami
aws configure set aws_access_key_id ${AWS_ACCESS_KEY}
aws configure set aws_secret_access_key ${AWS_SECRET_KEY}
sudo su jenkins
whoami
