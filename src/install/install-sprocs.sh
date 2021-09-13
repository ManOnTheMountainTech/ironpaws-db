#!/bin/bash

if [ $# -eq 0 ];
	then echo "No arguments supplied. Need database name."
	exit 1
fi

if [ -z "$1" ];
	then echo "The first argument is empty. Need database name."
	exit 2
fi

pushd ~/mush-code/src/sql/sprocs
echo "Installing sprocs..."
~/mush-code/src/install/mysql-exec.sh %1
cd ~/mush-code/src/sql/sfuncs
~/mush-code/src/install/mysql-exec.sh %1
popd
