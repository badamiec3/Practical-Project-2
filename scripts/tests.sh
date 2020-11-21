#! /bin/bash

ssh -i /.ssh/id_rsa ubuntu@pytest

echo "TEST START"

touch file

echo "TEST END"

exit




