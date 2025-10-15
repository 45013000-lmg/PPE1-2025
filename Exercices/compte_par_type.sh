#!/bin/bash

# if [ $# -ne 2 ]; then
#     echo "Usage: $0 <ann> <type>"
#     exit 1
# fi
#
# ann=$1
# type=$2
#
# if [ ! -d "$ann" ]; then
#     echo "Dossier $ann inexistant"
#     exit 1
# fi
#
# count=$(grep -r  "$type" ${ann}/* | wc -l)
# echo $count


DATADIR=$1
ANN=$2
TYPE=$3

cd $DATADIR
echo "nous sommes ici: "
pwd

echo $(grep -r "$TYPE" ./$ANN/* | wc -l)
