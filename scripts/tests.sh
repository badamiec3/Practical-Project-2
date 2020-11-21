#! /bin/bash

ssh -i /home/jenkins/.ssh/id_rsa ubuntu@10-0-1-18

echo "TEST START"

touch file

echo "TEST END"

exit




