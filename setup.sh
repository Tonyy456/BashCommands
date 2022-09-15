#!/bin/bash

FILE=${BASH_SOURCE[0]}
FILENAME=$(echo $FILE | sed -e 's@.*/@@g')

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
INSTALL_DIR=$(dirname $SCRIPT_DIR)

touch $SCRIPT_DIR/scripts/save_files/saved_edits.txt
touch $SCRIPT_DIR/scripts/save_files/saved_jumps.txt
touch $SCRIPT_DIR/scripts/save_files/store_copy.txt
touch $SCRIPT_DIR/files/pf

#replace lines
sed -i "s@.*alias.*@@g" $SCRIPT_DIR/files/pf
sed -i "s@.*/files/bashconfig@@g" ~/.bashrc
sed -i '/^[[:blank:]]*$/ d' $SCRIPT_DIR/files/pf

echo alias bash=\'. $SCRIPT_DIR/files/bashconfig\' >> $SCRIPT_DIR/files/pf
echo . $SCRIPT_DIR/files/bashconfig >> ~/.bashrc
source ~/.bashrc
