#! /bin/bash

ssh -i /home/jenkins/.ssh/id_rsa ubuntu@10.0.1.18 << EOF

cd /home/ubuntu/

sudo rm -r Jenkins-Repo-Practical-Project

git clone https://github.com/badamiec3/Jenkins-Repo-Practical-Project.git

cd /home/ubuntu/Jenkins-Repo-Practical-Project

sudo -E DATABASE_URI=${DATABASE_URI} -E TEST_DATABASE_URI=${TEST_DATABASE_URI} -E SECRET_KEY=${SECRET_KEY} docker-compose up -d 

echo "TEST END"

EOF




