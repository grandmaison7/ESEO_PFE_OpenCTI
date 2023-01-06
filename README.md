# ESEO_PFE_OpenCTI
## Ecrit par Geoffrey Lange / Gautier Barth / Côme Le Cour Grandmaison

### Introduction
OpenCTI est une plateforme open source permettant aux organisations de gérer leurs connaissances en matière de cybermenaces. Elle a été créée afin de structurer, stocker, organiser et visualiser des informations techniques et non techniques sur les cybermenaces.

La structuration des données est effectuée à l'aide d'un schéma de connaissances basé sur les normes STIX2. Il a été conçu comme une application web moderne comprenant une API GraphQL et un frontal orienté UX. OpenCTI peut également être intégré à d'autres outils et applications tels que MISP, TheHive, MITRE ATT&CK, etc.

![image](https://user-images.githubusercontent.com/83913657/211020662-43812e69-e9d2-42d7-8a3b-dfcc97d73a9c.png)

### Objectif
L'objectif d'Open CTI est de prédire une attaque pour pouvoir anticiper et préparer la défense de son système d'information. Pour cela, on va relier chaque élément d'information à sa source primaire (un rapport, un événement MISP, etc.), avec des fonctionnalités telles que les liens entre chaque information, les dates de première et de dernière observation, les niveaux de confiance, etc. L'outil est capable d'utiliser le cadre ATT&CK de MITRE (par le biais d'un connecteur dédié) pour aider à structurer les données. L'utilisateur peut également choisir d'implémenter ses propres jeux de données.

Une fois les données capitalisées et traitées par les analystes d'OpenCTI, de nouvelles relations peuvent être déduites de celles existantes pour faciliter la compréhension et la représentation de ces informations. Cela permet à l'utilisateur d'extraire et d'exploiter des connaissances significatives à partir des données brutes.

### Documentation
Pour plus de documentation, veuillez consulter notre [Wiki](https://github.com/grandmaison7/ESEO_PFE_OpenCTI/wiki)

### Démarrage 
Open CTI est gourmand en ressource, plus vous souhaitez avoir de la données, plus il vous faudra de ressources. 
Nous vons conseillons donc de monter la solution Open CTI sur plusieurs machines (organisée en cluster).

# @gautier pour les consignes

### Licence et contribution 
Ce projet est developpé par trois étudiants de l'ESEO dans le cadre de leur Projet de Fin d'Etudes. Il pourra ensuite être réutilisé par des professeurs de l'ESEO pour réaliser des travaux sur l'intelligence artificielle.
