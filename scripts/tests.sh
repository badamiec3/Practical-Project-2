#! /bin/bash

ssh -i /home/jenkins/.ssh/id_rsa ubuntu@10.0.1.18 << EOF

echo "TEST START"

cd /home/ubuntu/

touch file

echo "TEST END"

EOF




