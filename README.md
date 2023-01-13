# ESEO_PFE_OpenCTI
## Ecrit par Geoffrey Lange / Gautier Barth / Côme Le Cour Grandmaison

### Introduction
OpenCTI est une plateforme open source permettant aux organisations de gérer leurs connaissances en matière de cybermenaces. Elle a été créée afin de structurer, stocker, organiser et visualiser des informations techniques et non techniques sur les cybermenaces.

La structuration des données est effectuée à l'aide d'un schéma de connaissances basé sur les normes STIX2. Il a été conçu comme une application web moderne comprenant une API GraphQL et un frontal orienté UX. OpenCTI peut également être intégré à d'autres outils et applications tels que MISP, TheHive, MITRE ATT&CK, etc.

![image](https://user-images.githubusercontent.com/83913657/211020662-43812e69-e9d2-42d7-8a3b-dfcc97d73a9c.png)

### Définition de « CTI »
Cyber Threat Intelligence (ou "Renseignement sur les Menaces Cyber") en français est une pratique permettant d'aider les organisations à mieux comprendre les risques auxquels elles sont exposées, et à prendre des mesures pour les prévenir ou y répondre.
La CTI peut être utilisée pour améliorer la détection des menaces, la réponse aux incidents, la prévention des futures attaques, la gestion des risques et la prise de décisions stratégiques en matière de cybersécurité.

### Objectif
L'objectif d'Open CTI est de prédire une attaque pour pouvoir anticiper et préparer la défense de son système d'information. Pour cela, on va relier chaque élément d'information à sa source primaire (un rapport, un événement MISP, etc.), avec des fonctionnalités telles que les liens entre chaque information, les dates de première et de dernière observation, les niveaux de confiance, etc. L'outil est capable d'utiliser le cadre ATT&CK de MITRE (par le biais d'un connecteur dédié) pour aider à structurer les données. L'utilisateur peut également choisir d'implémenter ses propres jeux de données.

Une fois les données capitalisées et traitées par les analystes d'OpenCTI, de nouvelles relations peuvent être déduites de celles existantes pour faciliter la compréhension et la représentation de ces informations. Cela permet à l'utilisateur d'extraire et d'exploiter des connaissances significatives à partir des données brutes.

### Open Source
La notion d’Open Source
L'ANSSI a choisi d'utiliser le modèle open-source pour OpenCTI afin de permettre à d'autres organisations de cybersécurité de bénéficier de cette plateforme, de l'utiliser et de l'améliorer pour répondre à leurs propres besoins en matière de cybersécurité. Les utilisateurs peuvent contribuer au projet en proposant des correctifs, des améliorations ou des nouvelles fonctionnalités. Cela permet à l'ANSSI de profiter de l'expertise et de la créativité de la communauté pour maintenir et améliorer la plateforme.

### Pourquoi OpenCTI ?
Il existe de nombreuses solutions de CTI sur le marché, chacune ayant ses propres avantages et inconvénients.  D'autres solutions populaires comme ThreatConnect, ThreatQuotient et Anomali ont des fonctionnalités d'analyse avancée des menaces, des capacités de collaboration et des intégrations avec d'autres outils de cybersécurité, mais peuvent être plus onéreuses qu’OpenCTI et nécessiter une certaine expertise technique pour tirer pleinement parti de leurs fonctionnalités avancées. 
Alors, on choisira ici OpenCTI et non une solution concurrente pour sa flexibilité, sa collaboration, sa transparence, son coût abordable et son support de qualité de l'ANSSI.

### Documentation
Pour plus de documentation, veuillez consulter notre [Wiki](https://github.com/grandmaison7/ESEO_PFE_OpenCTI/wiki)

### Démarrage 
Open CTI est gourmand en ressource, plus vous souhaitez avoir de la données, plus il vous faudra de ressources. 
Nous vons conseillons donc de monter la solution Open CTI sur plusieurs machines (organisée en cluster).

### Déploiement de l'infrastructure avec Ansible

Pour déployer la solution, il suffit de git clone le projet, vagrant up dans le dossier extrait, puis se connecter en ssh au serveur de déploiement monté.
  user --> user-ansible
  pass --> Ans1bLe

Prérequis :

Pour que le déploiement soit opérationnel, il faut au préalable que les machines qui seront utilisées pour héberger l'infrastructure communiquement par SSH avec le serveur de déploiement Ansible (après la création de la machine serveur Ansible).

Pour lancer le déploiement d'OpenCTI, il suffit d'exécuter la commande suivante sur le serveur de déploiement :

```sudo ansible-playbook -i inventaire.ini --user user-ansible --become playbook-deploiement.yml```

### Licence et contribution 
Ce projet est developpé par trois étudiants de l'ESEO dans le cadre de leur Projet de Fin d'Etudes. Il pourra ensuite être réutilisé par des professeurs de l'ESEO pour réaliser des travaux sur l'intelligence artificielle.
