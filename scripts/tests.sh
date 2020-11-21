#! /bin/bash

ssh -i /home/ubuntu/.ssh/id_rsa ubuntu@${TESTVM_IP}

echo "TEST START"

touch file

echo "TEST END"

exit




