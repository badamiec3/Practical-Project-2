#! /bin/bash

ssh -i /home/jenkins/.ssh/id_rsa ubuntu@${TESTVM_IP} << EOF

cd /home/ubuntu/

sudo rm -r Jenkins-Repo-Practical-Project

git clone https://github.com/badamiec3/Jenkins-Repo-Practical-Project.git

cd /home/ubuntu/Jenkins-Repo-Practical-Project

touch file

echo "TEST END"

EOF




