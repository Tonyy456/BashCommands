#!/bin/bash


FILE=${BASH_SOURCE[0]}
FILENAME=$(echo $FILE | sed -e 's@.*/@@g')

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
INSTALL_DIR=$(dirname $SCRIPT_DIR)

touch $SCRIPT_DIR/scripts/save_files/saved_edits.txt
touch $SCRIPT_DIR/scripts/save_files/saved_jumps.txt
touch $SCRIPT_DIR/scripts/save_files/store_copy.txt

echo . $SCRIPT_DIR/files/bashconfig >> ~/.bashrc
source ~/.bashrc
