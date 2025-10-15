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

grep -h "Location" ./$annee/$mois/*.ann |cut -f3| sort | uniq -c | sort -nr | head -n $nom

# grep -h "Location"→ 提取出所有包含 “Location” 的行
# cut -f3 → 从这些行里只保留第 3 列
#  sort | uniq -c | sort -nr
# sort按字母顺序排列;  uniq去除重复,但必须是相邻的重复（所以前面要先 sort）;-c 参数表示：在每行前面显示出现的次数;  sort -n 表示 按数字排序（因为前面第一列是数字）,-r 表示 倒序（reverse，最大在前）.
