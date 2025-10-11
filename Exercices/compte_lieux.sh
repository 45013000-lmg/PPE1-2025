#!/bin/bash

if [ $# -ne 3 ]; then
     echo "Usage: $0 <annee|*> <mois|*> <nombre>"
     exit 1
fi

annee=$1
mois=$2
nom=$3

if [ -z "$./$annee/$mois/*.ann" ]; then
    echo "Aucun fichier trouvé pour ${annee}-${mois}"
    exit 1
fi




if [ "$annee" = "*" ]; then
    annee="*"
fi
if [ "$mois" = "*" ]; then
    mois="*"
fi

grep "Location" ./$annee/$mois/*.ann | awk -F'\t' '{print $3}' | sed 's/Location [0-9]* [0-9]*[[:space:]]*//' | sort | uniq -c | sort -nr | head -n $nom
