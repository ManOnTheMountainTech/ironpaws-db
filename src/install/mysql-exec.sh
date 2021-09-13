#!/bin/bash
for i in *
do
    echo "Executing $1 < $i"
    mysql -u root $1 < $i
done
