#!/bin/bash

#echo ${0##*/}

username="root"

while getopts a: flag
do
    case "${flag}" in
        a) username=${OPTARG};;
    esac
done

if [ $(( $# - $OPTIND )) -ne 0 ]; then
    echo "Usage:"
    echo $(basename $BASH_SOURCE) [-a \<account name\>] \<mush database name\>    
    exit 1
fi

if [[ "root" != $username ]]; then
    read -p "Database password for $username: " -s password
    authentication="-u $username -p$password"
else
    authentication="-u $username"
fi

echo "Authentication =$authentication"

MUSH_DB_NAME=${@:$OPTIND:1}

cd ../sql
echo "Creating database...";
mysql $authentication -e "create database if not exists $MUSH_DB_NAME"
pushd sfuncs
../../install/mysql-exec.sh $MUSH_DB_NAME
popd
pushd sprocs
../../install/mysql_exec.sh $MUSH_DB_NAME
popd
