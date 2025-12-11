# Journal de bord du projet encadré

## Cours 1 
- J'ai découvert les bases de Linux et ses commandes fondamentales. Bien que ces opérations soient nouvelles pour moi, j'ai compris leur importance pour la suite du cours. Je dois encore m'entraîner à la maison pour mieux les maîtriser.
 - 1.ficher,dossier,dossier parent(..),dossier personnel(~),racine(/),dossier courant(pwd)
 - 2.chemin absolu VS chemin relatif
 - 3.caracteres de replacement(*/?),ls,cd,cat,man..etc

🔧 Difficultés:Apprentissage des options man(difficile pour la comprehension des mots techniques francais)
👍 J'utilise souvent man pour maîtriser l'expression professionnelle, mais je trouve plus efficace de mémoriser directement le code.


## Cours 2
- J'ai créé un nouveau dépôt sur GitHub
- J'ai cloné le dépôt en local avec git clone
- J'ai créé le fichier journal.md pour suivre mon progrès
- J'ai créé le fichier .gitignore pour ignorer les fichiers inutiles
- J'ai appris à utiliser les commandes git add, commit et push

🔧 Difficultés: Confusion entre les différents états des fichiers (untracked, staged, committed)
  Erreurs de permission lors du premier git push
👍 J'ai demandé conseil à mon prof et utilisé ChatGPT pour m'aider, m'entraînant assidûment en dehors des cours jusqu'à ce que je maîtrise parfaitement comment pull et pull le dépôt.


## Cours 3
- J'ai appris à utiliser la commande wc pour compter les lignes, mots et caractères dans un fichier.
- J'ai compris la différence entre > (redirection écrasante) et >> (redirection ajout).
- J'ai découvert l'utilisation du pipe (|) pour chaîner des commandes et transmettre le résultat d'une commande à une autre.
- J'ai également exploré grep pour rechercher des motifs dans des fichiers, et commencé à écrire mes premiers scripts Bash.

🔧 Difficultés: Les instructions conditionnelles en Bash ont été expliquées très rapidement en cours. Je n'ai pas tout saisi immédiatement. 
👍 Je compte m'exercer en autonomie pour mieux les comprendre et les appliquer.

⚠️ cat ./2016/* | grep Location | wc -l(✅) VS grep "Location" *.ann|grep "2016" |wc -l(❌) VS grep "Location" ./2016/*.ann | wc -l(✅)


## Cours 4
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

## Cours 5
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

## Cours 6
- Cette semaine, nous avons commencé par corriger et commenter les exercices de la semaine précédente.
J’ai revu en détail la commande curl et j’ai mieux compris le rôle de ses nombreuses options, notamment à travers la ligne suivante :
“curl -o tmp.txt -k -i -s -L -w "%{content_type}\n%{http_code}" ${line} > metadata.tmp”
Voici ce que j’ai appris :
<img width="1086" height="339" alt="图片" src="https://github.com/user-attachments/assets/430ef64a-bb23-4d55-b1d0-1f8658b8aba6" />
J’ai ensuite appris à extraire ces informations à l’aide de commandes Bash :
encodage=$(cat metadata.tmp | head -n 1 | grep -E -o "charset=.*" | cut -d= -f2)
response=$(cat metadata.tmp | tail -n 1)
La première commande récupère le nom du jeu de caractères (charset), et la deuxième récupère le code de réponse HTTP.Cela m’a permis de comprendre comment analyser pas à pas les métadonnées d’une page web dans un script Bash.

- En parallèle, nous avons également étudié la structure de base du langage HTML, avec les balises head et body.
J’ai appris à transformer un tableau CSV en une table HTML simple à l’aide des balises table, tr, th et td.

🔧 Difficultés :
- Je trouve que certaines options des commandes (surtout celles de curl sont encore difficiles à mémoriser et à distinguer.Elles sont très nombreuses et parfois je m’y perds un peu.

👍 Ressenti personnel :
- Je compte réorganiser mes notes pour mieux classer les options importantes et leurs exemples d’utilisation.
Cela m’aidera à devenir plus efficace et à mieux comprendre la logique de chaque commande.

## Cours 7
- Cette semaine, nous avons étudié les bases du HTML et du CSS.
J’ai appris à créer une page web depuis zéro et à la rendre plus esthétique à l’aide de différentes techniques de mise en forme.
Nous avons revu la structure fondamentale d’une page, avec les balises html, head et body, et appris à insérer du texte, des titres, des liens ou des images.

- Nous avons découvert trois manières principales de styliser une page web :
1️⃣ en utilisant les balises HTML comme b, i, em ou strong pour mettre en valeur du texte ;
2️⃣ en ajoutant des styles internes dans la section head avec la balise style ;
3️⃣ en créant un fichier CSS externe, relié à la page grâce à <link>, pour mieux séparer le contenu et la présentation.

- Nous avons également exploré le framework Bulma, une bibliothèque CSS très complète qui propose de nombreuses classes prêtes à l’emploi pour créer rapidement des boutons, des menus, des sections, etc.
Cependant, Bulma contient tellement de styles que j’ai passé beaucoup de temps à chercher et tester les bonnes classes à utiliser.
C’est parfois un peu déroutant, mais très intéressant à manipuler.

- Enfin, nous avons appris à utiliser GitHub Pages pour publier nos pages web en ligne.
C’était la première fois que je mettais mon propre site en ligne via GitHub, et voir ma page s’afficher sur Internet m’a donné une vraie satisfaction.

🔧 Difficultés :
Lors de la rédaction du code HTML, j’ai trouvé que la gestion des niveaux et des balises imbriquées était particulièrement difficile.
Il faut toujours vérifier les ouvertures et les fermetures de balises, et il m’est souvent arrivé de devoir corriger plusieurs fois la structure du code.
C’est un travail qui demande rigueur et patience.

👍 Ressenti personnel :
Ce cours m’a permis de mieux comprendre la logique du développement web et la complémentarité entre HTML et CSS.
Même si la mise en page demande beaucoup d’essais et d’ajustements, c’est très gratifiant de voir son propre site devenir plus clair et plus esthétique.
Je souhaite continuer à pratiquer et à mieux maîtriser les outils comme Bulma pour concevoir des pages plus professionnelles à l’avenir.

## Cours 8
- Cette semaine, nous avons étudié la gestion d’un dépôt GitHub en travail collaboratif, ainsi que les erreurs les plus courantes lorsqu’on travaille à plusieurs.
Le cours portait surtout sur la manière de maintenir la synchronisation entre le dépôt local et le dépôt distant, et sur les bonnes pratiques à adopter lorsqu’un push ou un pull échoue.

- Nous avons approfondi plusieurs commandes essentielles de Git :
git reset (annuler un commit ou revenir à un état antérieur)
git checkout (changer de branche, restaurer un fichier, consulter un ancien commit)
git stash (mettre de côté des modifications temporaires)
et la notion de HEAD, qui représente la position actuelle dans l’historique du projet.

- La partie la plus difficile pour moi a été git checkout, car cette commande possède plusieurs fonctions et je les confondais souvent.
Après avoir révisé le cours et cherché des explications supplémentaires, je comprends maintenant clairement ses trois usages principaux :
restaurer un fichier pour annuler les modifications locales,
changer de branche,
explorer l’état d’un commit antérieur.

Pendant le cours, tout cela restait assez abstrait, mais les exercices m’ont vraiment aidée à réviser et à appliquer ce que j’avais appris.
Je commence à mieux interpréter les messages d’erreur de Git, et je sais quelle commande utiliser selon la situation.

- Par exemple, lorsqu’un push échoue parce que le dépôt local et le dépôt distant ne sont pas synchronisés, je sais désormais suivre la procédure correcte :
git fetch pour voir les différences,
git reset HEAD~1 pour annuler le dernier commit local,
git stash pour sauvegarder mes modifications,
git pull pour récupérer la version à jour du dépôt distant,
git stash pop pour réappliquer mes changements,
et utiliser régulièrement git status pour vérifier l’état du projet.

- Grâce à ces exercices, je me sens beaucoup plus à l’aise avec Git.
Je ne me contente plus d’exécuter les commandes mécaniquement : je comprends désormais leur logique et leur rôle dans la gestion d’un projet collaboratif.
Même si Git reste parfois abstrait, la pratique m’aide à progresser de manière solide et régulière.

## Cours 9

- Cette semaine, nous avons appris à créer et gérer des environnements virtuels Python, afin de séparer proprement les dépendances de différents projets.
J’ai découvert l’utilisation de venv, ainsi que les commandes pour activer (source bin/activate) et désactiver (deactivate) un environnement virtuel.
Nous avons également comparé les outils pip et uv, et compris leurs différences en termes de rapidité et de gestion des paquets.

- Un autre élément important du cours a été l’utilisation de wordcloud_cli pour générer des nuages de mots.
J’ai appris à personnaliser une wordcloud en modifiant : les couleurs, les dimensions, les masques, la police, et la liste de stopwords. C’était la première fois que je générais une visualisation directement depuis le terminal, ce que j’ai trouvé à la fois pratique et motivant.

- Nous avons ensuite réalisé un exercice de tokenisation, en utilisant un environnement virtuel Python pour découper un fichier texte en tokens.
C’est une étape de base mais essentielle pour les analyses linguistiques automatisées.

- En fin de séance, nous avons découvert le logiciel de textométrie Trameur.
J’ai compris que, pour que ce type d’outil fonctionne correctement, il faut au préalable structurer le texte, par exemple en XML ou en marquant explicitement les divisions textuelles.
Nous avons également abordé la loi hypergéométrique, utilisée en textométrie. Cette partie m’a semblé assez abstraite, et je pense qu’il me faudra une révision supplémentaire pour bien comprendre son application.

🔧 Difficultés : Les notions statistiques liées à la loi hypergéométrique restent complexes pour moi, et l’exigence de structuration des textes dans Trameur demande une certaine rigueur. Je dois encore approfondir ces points.

👍 Ressenti personnel : Le contenu de cette séance était dense mais très intéressant : environnement Python, visualisation, traitement automatique et textométrie.
Cela m’a montré toute la chaîne des outils nécessaires pour analyser un texte de manière professionnelle.
Même si je dois encore progresser en mathématiques et en Python, je me sens de mieux en mieux équipée pour aborder les prochaines étapes du cours.

## Cours10
- Cette séance a été consacrée à une présentation détaillée de la structure générale de notre projet final.
Le professeur a expliqué toutes les étapes que nous devrons réaliser :
choix du mot à étudier ; constitution d’un fichier de 50 URLs ; aspiration des pages avec wget/curl ; extraction du texte brut avec lynx ; filtrage des contextes par egrep ; création des tableaux (URL, code HTTP, encodage, occurrences, etc.) ; génération de nuages de mots ; création d’un concordancier ; analyse séparée pour chaque langue puis conclusion globale.
Après cette présentation, nous avons commencé à travailler concrètement sur nos projets : choix du mot, préparation des dossiers, rédaction du fichier d’URLs, et réflexion sur les futures analyses.

- La principale difficulté que j’ai rencontrée concerne la formulation de l’hypothèse.
Je comprends qu’une hypothèse doit : être liée à un phénomène linguistique ; constituer une prédiction que l’on pourra vérifier à l’aide du corpus ; guider les analyses (occurrences, cooccurrences, nuages de mots, concordancier, etc.). Cependant, au moment de la rédiger, je trouve cela encore très abstrait.
J’ai du mal à transformer une intuition linguistique en une hypothèse claire et testable. Cette difficulté m’a montré que je dois encore approfondir la logique méthodologique avant de définir mon hypothèse finale.

- Malgré cette incertitude, cette séance m’a permis de mieux comprendre l’ensemble du workflow du projet :
collecte → nettoyage → structuration → extraction → statistiques → visualisation → analyse.
En avançant dans le projet, je réalise que l’hypothèse est essentielle pour orienter l’analyse et pour donner un sens aux résultats que nous allons obtenir.

## Cours11
- Cette séance a été consacrée à l’avancement du projet.
Le cours était organisé sous forme de travail autonome : chacun avançait sur son projet, et nous pouvions poser des questions au professeur dès que nous rencontrions un problème.
Ce fonctionnement m’a permis de clarifier plusieurs étapes techniques du projet.

- J’ai terminé une première version de la page tableaux, où j’ai intégré les informations principales : URL, code HTTP, encodage, nombre d’occurrences, dump textuel, etc.
Cependant, au cours de cette étape, j’ai rencontré plusieurs difficultés :
certaines pages ne se redirigent pas correctement ; d’autres exigent une authentification ou des cookies, ce qui empêche l’aspiration via wget/curl ; quelques URLs renvoient des pages vides ou illisibles, ce qui bloque les étapes suivantes.

- Ces problèmes m’ont montré que l’aspiration des pages n’est pas aussi simple que dans les exemples du cours.
Il faut tester les URLs, vérifier leur accessibilité et adapter le script pour éviter les erreurs.
Je vais donc continuer à améliorer mon projet : sélectionner de nouvelles URLs plus fiables, corriger les pages problématiques et finaliser la construction des tableaux et des contextes.
