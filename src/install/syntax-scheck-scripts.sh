#!/bin/bash

pushd ~/public_html/beta.ironpawsllc.com/wp-content/plugins/ironpaws
echo "Checking beta.ironpawsllc.com..."
~/mush-code/src/install/compile-scripts.sh
pushd includes
~/mush-code/src/install/compile-scripts.sh
pushd algorithms
~/mush-code/src/install/compile-scripts.sh
popd
popd
popd
