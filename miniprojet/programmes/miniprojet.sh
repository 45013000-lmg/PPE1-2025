#!/bin/bash

if [ $# -ne  1 ];then
    echo "Usage: $0 <URL>"
    exit 1
fi

if [ ! -f "$1" ];then
    echo "Erreur: le ficher $1 n'existe pas."
    exit 1
fi

FICHIER_URLS=$1

i=0
while read -r LINE;do
    i=$(expr $i + 1)
    code=$(curl -s -o /dev/null -w "%{http_code}" "$LINE")
    encodage=$(curl -sI "$LINE" | grep -i "charset=" | cut -d= -f2 | tr -d '\r')
    nb_mots=$(lynx -dump -nolist "$LINE" | wc -w)
    echo -e "${i}\t${LINE}}\t${code}\t${encodage}\t${nb_mots}"
done < "$1"
