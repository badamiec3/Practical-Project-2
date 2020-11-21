#! /bin/bash

ssh -i ~/.ssh/id_rsa ubuntu@${TESTVM_IP}

echo "TEST START"

touch file

echo "TEST END"

exit




