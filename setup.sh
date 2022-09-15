#!/bin/bash


FILE=${BASH_SOURCE[0]}
FILENAME=$(echo $FILE | sed -e 's@.*/@@g')

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
INSTALL_DIR=$(dirname $SCRIPT_DIR)

echo \n\n >> ~/.bashrc
echo . $SCRIPT_DIR/files/bashconfig >> ~/.bashrc
source ~/.bashrc
