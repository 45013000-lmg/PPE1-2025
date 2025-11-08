# Journal de bord du projet encadré

## Cour1 
- J'ai découvert les bases de Linux et ses commandes fondamentales. Bien que ces opérations soient nouvelles pour moi, j'ai compris leur importance pour la suite du cours. Je dois encore m'entraîner à la maison pour mieux les maîtriser.
 - 1.ficher,dossier,dossier parent(..),dossier personnel(~),racine(/),dossier courant(pwd)
 - 2.chemin absolu VS chemin relatif
 - 3.caracteres de replacement(*/?),ls,cd,cat,man..etc

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

## Cour5
- Cette semaine, nous avons commencé à travailler sur le mini-projet, qui consiste à écrire un script Bash capable de lire un fichier contenant plusieurs URL, d’en récupérer le contenu et d’en extraire des informations pour produire un tableau.
C’est la première fois que je travaille sur un script un peu long et structuré, et j’ai compris l’importance de bien organiser le code pour éviter les erreurs.
- J’ai appris à utiliser curl et lynx, deux outils essentiels pour interagir avec le web depuis le terminal.
Au début, j’avais du mal à faire la différence entre eux :
je pensais qu’ils faisaient à peu près la même chose.
Maintenant, je comprends que curl sert à récupérer le code source ou à envoyer des requêtes HTTP, alors que lynx est un navigateur en ligne de commande qui permet d’obtenir uniquement le texte visible d’une page web, sans les balises HTML.
Cela m’a permis de mieux visualiser la structure des pages et de comprendre la logique d’extraction des données.
- J’ai aussi progressé dans la validation des arguments dans les scripts Bash.
Je sais maintenant utiliser des tests comme [ $# -ne 1 ] pour vérifier le nombre d’arguments fournis, et [ ! -f "$1" ] pour vérifier si le fichier passé en paramètre existe réellement.
J’ai mieux compris la signification de variables comme $0 (nom du script), $1 (premier argument) et $# (nombre d’arguments).
Ces notions me paraissaient abstraites au début, mais en les pratiquant dans le mini-projet, elles deviennent beaucoup plus claires.
- J’ai découvert dans l’éditeur Kate une fonction très utile : l’analyse automatique de script (ShellCheck).
Cet outil signale les erreurs, les mauvaises pratiques ou les variables non utilisées dans le code.
Grâce à lui, j’ai pu corriger plusieurs petits détails et rendre mon script plus propre et plus lisible.
- En parallèle, j’ai commencé à revoir les bases de HTML, car nous devons comprendre la structure d’une page web pour pouvoir extraire les bonnes informations.
Je me rends compte que je ne maîtrise pas encore bien ce langage, notamment les balises <head>, <body> ou <title>.
Je compte utiliser des ressources en ligne pour approfondir mes connaissances.
Plus j’avance, plus je réalise que j’ai encore beaucoup à apprendre, mais cela me motive à continuer.

🔧 Difficultés :
- Le cours sur curl et lynx allait un peu vite, et je n’ai pas encore eu le temps de bien maîtriser toutes les options, surtout celles de curl comme -i, -o ou -I.
De plus, certains sites web dans la liste d’URL ne sont plus accessibles, ce qui provoque des erreurs avec Lynx — mais cela m’a aussi appris à être patiente et à anticiper les cas où un site ne répond pas.

👍 Ressenti personnel :
- Je sens que je deviens plus autonome dans la compréhension des scripts Bash et des commandes Linux.
Même si j’ai encore des lacunes (notamment en HTML et en manipulation web), je suis fière de mes progrès.
Chaque exercice me montre un nouveau pan du fonctionnement d’Internet et du traitement automatique du texte.
Cette semaine m’a donné envie de poursuivre mes efforts et de mieux maîtriser les outils du web et de la programmation.

## Cour6
- Cette semaine, nous avons commencé par corriger et commenter les exercices de la semaine précédente.
J’ai revu en détail la commande curl et j’ai mieux compris le rôle de ses nombreuses options, notamment à travers la ligne suivante :
“curl -o tmp.txt -k -i -s -L -w "%{content_type}\n%{http_code}" ${line} > metadata.tmp”
Voici ce que j’ai appris :
<img width="1086" height="339" alt="图片" src="https://github.com/user-attachments/assets/430ef64a-bb23-4d55-b1d0-1f8658b8aba6" />
J’ai ensuite appris à extraire ces informations à l’aide de commandes Bash :
encodage=$(cat metadata.tmp | head -n 1 | grep -E -o "charset=.*" | cut -d= -f2)
response=$(cat metadata.tmp | tail -n 1)
La première commande récupère le nom du jeu de caractères (charset), et la deuxième récupère le code de réponse HTTP.Cela m’a permis de comprendre comment analyser pas à pas les métadonnées d’une page web dans un script Bash.

- En parallèle, nous avons également étudié la structure de base du langage HTML, avec les balises <head> et <body>.
J’ai appris à transformer un tableau CSV en une table HTML simple à l’aide des balises <table>, <tr>, <th> et <td>.

🔧 Difficultés :
- Je trouve que certaines options des commandes (surtout celles de curl sont encore difficiles à mémoriser et à distinguer.Elles sont très nombreuses et parfois je m’y perds un peu.

👍 Ressenti personnel :
- Je compte réorganiser mes notes pour mieux classer les options importantes et leurs exemples d’utilisation.
Cela m’aidera à devenir plus efficace et à mieux comprendre la logique de chaque commande.
