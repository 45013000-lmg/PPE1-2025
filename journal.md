# Journal de bord du projet encadré

## Cour1 
J'ai découvert les bases de Linux et ses commandes fondamentales. Bien que ces opérations soient nouvelles pour moi, j'ai compris leur importance pour la suite du cours. Je dois encore m'entraîner à la maison pour mieux les maîtriser.
1.ficher,dossier,dossier parent(..),dossier personnel(~),racine(/),dossier courant(pwd)
2.chemin absolu VS chemin relatif
3.caracteres de replacement(*/?),ls,cd,cat,man..etc

🔧 Difficultés:Apprentissage des options man(difficile pour la comprehension des mots techniques francais)
👍 J'utilise souvent man pour maîtriser l'expression professionnelle, mais je trouve plus efficace de mémoriser directement le code.


## Cour2
- J'ai créé un nouveau dépôt sur GitHub
- J'ai cloné le dépôt en local avec git clone
- J'ai créé le fichier journal.md pour suivre mon progrès
- J'ai créé le fichier .gitignore pour ignorer les fichiers inutiles
- J'ai appris à utiliser les commandes git add, commit et push

🔧 Difficultés: Confusion entre les différents états des fichiers (untracked, staged, committed)
  Erreurs de permission lors du premier git push
👍 J'ai demandé conseil à mon prof et utilisé ChatGPT pour m'aider, m'entraînant assidûment en dehors des cours jusqu'à ce que je maîtrise parfaitement comment pull et pull le dépôt.


## Cour3
- J'ai appris à utiliser la commande wc pour compter les lignes, mots et caractères dans un fichier.
- J'ai compris la différence entre > (redirection écrasante) et >> (redirection ajout).
- J'ai découvert l'utilisation du pipe (|) pour chaîner des commandes et transmettre le résultat d'une commande à une autre.
- J'ai également exploré grep pour rechercher des motifs dans des fichiers, et commencé à écrire mes premiers scripts Bash.

🔧 Difficultés: Les instructions conditionnelles en Bash ont été expliquées très rapidement en cours. Je n'ai pas tout saisi immédiatement. 
👍 Je compte m'exercer en autonomie pour mieux les comprendre et les appliquer.

⚠️ cat ./2016/* | grep Location | wc -l(✅) VS grep "Location" *.ann|grep "2016" |wc -l(❌) VS grep "Location" ./2016/*.ann | wc -l(✅)


## Cour4
- J’ai compris comment utiliser les boucles for pour répéter une même commande sur plusieurs années (2016, 2017, 2018), notamment dans le script comptes.sh.
- J’ai découvert la gestion des arguments dans les scripts ($1, $2, $#) et comment adapter le comportement du programme selon les paramètres fournis.
→ Exemple : ./compte_par_type.sh 2017 Location pour compter uniquement les entités "Location" de 2017.
- J’ai appris à valider les arguments d’entrée avec des conditions if et des tests comme [ $# -ne 2 ] ou [ ! -d "$annee" ], afin d’éviter les erreurs d’exécution.
- J’ai aussi utilisé la commande find pour parcourir les sous-dossiers (par exemple 2016/01, 2016/02, etc.) et traiter les fichiers .ann de manière récursive.
- J’ai compris comment formater la sortie et créer des scripts plus complets comme compte_par_type_par_an.sh et compte_lieux.sh, capables de produire des classements automatiques des lieux.

🔧 Difficultés : Au début, j’avais du mal à comprendre la syntaxe des conditions if en Bash et la différence entre les crochets [ ] et les variables $#, $0, etc.
   De plus, j’ai rencontré une erreur avec grep ("Is a directory") à cause de la structure des sous-dossiers.

👍 Solutions et progrès : Après le cours, j’ai relu les diapositives et consulté des ressources en ligne pour mieux comprendre la logique du if et la validation des arguments.
   J’ai également corrigé mon script en utilisant find à la place de grep *.ann, ce qui m’a permis de traiter correctement les fichiers dans tous les sous-dossiers.
   Je me sens maintenant beaucoup plus à l’aise avec les bases du Bash et la construction de scripts paramétrés.

### Explication_du_code

<img width="1098" height="1044" alt="image" src="https://github.com/user-attachments/assets/7fc686f0-5acc-4334-a896-60951c818e33" />

- Ce script sert à : 👉 lire chaque ligne d’un fichier texte et vérifier si elle correspond à une URL valide (commençant par http:// ou https://).
- À la fin, il affiche combien de lignes sont valides et combien sont douteuses.

- Vérifie qu’un seul argument (le nom du fichier) a été fourni, sinon le programme s’arrête.
Initialise les compteurs pour les lignes valides et non valides.
- Commence une boucle pour lire le fichier ligne par ligne.
- Affiche la ligne lue actuellement.
- Vérifie si la ligne ressemble à une URL (commençant par http ou https).
- Si la ligne correspond, elle est considérée comme une URL valide.
- Sinon, la ligne est considérée comme douteuse (non valide).
- Fin de la boucle : lit toutes les lignes du fichier.
- Affiche le nombre d’URLs valides et de lignes douteuses.
