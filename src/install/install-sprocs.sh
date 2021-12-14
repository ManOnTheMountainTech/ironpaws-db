#!/bin/bash

if [ $# -eq 0 ];
	then echo "No arguments supplied. Need database name."
	exit 1
fi

if [ -z "$1" ];
	then echo "The first argument is empty. Need database name."
	exit 2
fi

pushd ../sql/sprocs
echo "Installing sprocs..."
../../install/mysql-exec.sh $1
cd teams
../../install/mysql-exec.sh $1
cd ../trse
../../../install/mysql-exec.sh $1
cd ../../sfuncs
../../install/mysql-exec.sh $1
popd
