# Rapport de Projet  
## Application Online Shopping  
### Application e-commerce JavaFX  
Gestion des utilisateurs et des produits


![mef](https://github.com/user-attachments/assets/536f95be-1798-4e14-9ca1-60e6d9d8b3df)

Réalisé par : Meftah Ibtihale  
Filière : 4IIR G2  
Encadré par : LARHLIMI Abderrahim  
Année universitaire : 2025–2026  

---

Ce projet consiste à développer une application de commerce en ligne réalisée en Java avec JavaFX.
Il conçoit une solution qui permet de gérer les utilisateurs et les produits de manière centralisée et sécurisée.

L’application repose sur une architecture MVC.
Cette structure sépare clairement l’interface graphique, la logique métier et l’accès aux données.
Elle facilite la maintenance et l’évolution du projet.

Le système intègre une authentification avec gestion des rôles.
L’administrateur dispose d’un tableau de bord pour gérer les utilisateurs et les produits.
Il peut ajouter, modifier et supprimer des comptes et des articles.
Le client peut consulter le catalogue et interagir avec les produits.

La gestion des données utilise une approche hybride.
Hibernate gère les utilisateurs via un mapping objet-relationnel.
JDBC et SQL natif gèrent les produits afin d’assurer un contrôle précis du stock et des performances.
La base de données MySQL est déployée avec Docker pour garantir un environnement stable.

L’interface JavaFX offre une navigation fluide et ergonomique.
Le multi-threading évite le blocage de l’interface lors des opérations lourdes.

Ce projet te permet d’appliquer concrètement la programmation orientée objet, la persistance des données et les bonnes pratiques d’architecture logicielle dans un contexte e-commerce réel.


---

## Introduction générale

Le commerce en ligne occupe une place importante dans le domaine informatique.  
Ce projet répond au besoin de gestion centralisée des produits et des utilisateurs dans une application e-commerce.

### Objectif

L’objectif principal du projet est de consolider les compétences en programmation
orientée objet à travers une architecture claire et maintenable. 
Le projet permet de mettre en œuvre les principes fondamentaux tels que l’encapsulation, l’héritage, le polymorphisme et l’abstraction, tout en respectant les bonnes pratiques de conception logicielle.

L’application vise également à maîtriser la gestion des données persistantes en utilisant
Hibernate comme couche d’accès aux données.
Cela inclut la configuration du framework ORM, le mapping objet-relationnel, la gestion des transactions et la communication avec une base de données MySQL déployée dans un environnement Docker.
Un autre objectif essentiel est la compréhension et l’application d’une architecture
logicielle structurée, notamment le modèle MVC.
Cette approche permet de séparer clairement l’interface utilisateur, la logique métier et l’accès aux données, améliorant ainsi la lisibilité du code, sa maintenabilité et son évolutivité.

Le projet a aussi pour but de développer une interface graphique ergonomique avec
JavaFX, facilitant l’interaction entre l’utilisateur et le système. L’accent est mis sur la
gestion des événements, la validation des données et l’affichage dynamique des informa
tions issues de la base de données.

Enfin, cette application constitue une première approche des problématiques rencon
trées dans les systèmes e-commerce réels, telles que la gestion des utilisateurs, des produits,
de l’authentification et des erreurs. Elle prépare ainsi à des projets plus complexes inté
grant la sécurité avancée, les performances et l’évolutivite du système.


### Fonctionnalités

L’application intègre un système d’authentification des utilisateurs permettant un ac
cès sécurisé à la plateforme. Chaque utilisateur doit s’inscrire puis se connecter à l’aide
de ses identifiants personnels. Ce mécanisme garantit que seules les personnes autorisées
peuvent accéder aux fonctionnalités de l’application et interagir avec les données stockées
dans la base. La validation des informations saisies et la gestion des erreurs d’authentifi
cation assurent une expérience utilisateur fiable et cohérente.

La gestion des rôles constitue une fonctionnalité centrale du système. L’application
distingue clairement les profils administrateur et client, chacun disposant de droits et d’in
terfaces spécifiques. L’administrateur peut accéder aux fonctionnalités de gestion avancée,
telles que l’ajout, la modification et la suppression des produits ainsi que la supervision
des utilisateurs. Le client, quant à lui, dispose d’un accès limité aux fonctionnalités de
consultation des produits et d’interaction avec le catalogue. Cette séparation des rôles
renforce la sécurité et respecte les principes de contrôle d’accès.

La gestion des produits permet de créer, consulter, mettre à jour et supprimer les
articles disponibles sur la plateforme. Chaque produit est défini par des informations
essentielles telles que le nom, le prix, la quantité en stock, la description et l’image associée.
Le système assure le suivi du stock afin de refléter en temps réel la disponibilité des
produits. Cette fonctionnalité garantit une gestion cohérente des données et constitue le
cœur du fonctionnement de l’application e-commerce.

- Authentification sécurisée des utilisateurs  
- Gestion des rôles administrateur et client  
- Gestion complète des produits  
- Suivi du stock en temps réel  

---

## Technologies utilisées

- Java  
- JavaFX  
- MySQL  
- Hibernate  
- JDBC et SQL natif  
- Docker  
— L’application est développée en Java, qui constitue le socle de la logique métier.
Ce langage permet de structurer le projet selon les principes de la programmation
orientée objet, d’assurer une bonne maintenabilité du code et de mettre en œuvre
des concepts avancés tels que les DAO, la gestion des exceptions et la séparation
des responsabilités entre les différentes couches de l’application.

— L’interface graphique est réalisée avec JavaFX. Cette technologie permet de conce
voir des interfaces modernes, interactives et ergonomiques. Grâce aux fichiers FXML
et aux contrôleurs associés, l’interface est clairement séparée de la logique métier,
ce qui facilite l’évolution du design et l’amélioration de l’expérience utilisateur.

— Labasededonnées repose sur MySQL, un système de gestion de bases de données
relationnelles fiable et largement utilisé. MySQL assure le stockage persistant des
données telles que les utilisateurs, les produits et les informations liées au stock. Il
permet également l’exécution de requêtes efficaces pour la consultation et la mise
à jour des données.

— Hibernate est utilisé pour la gestion des utilisateurs. Cet ORM simplifie l’interac
tion avec la base de données en automatisant la persistance des objets Java vers les
tables relationnelles. Il réduit l’écriture de code SQL répétitif, améliore la lisibilité
du code et facilite la gestion des entités, des relations et des transactions.

— Pour la gestion des produits, l’application utilise JDBC et du SQL natif. Ce
choix permet un contrôle précis des requêtes, notamment pour les opérations de
gestion du stock et des produits. L’utilisation directe de JDBC offre de bonnes
performances et une maîtrise complète des accès aux données.

— $Docker est utilisé pour la base de données MySQL afin de garantir un environne
ment de développement stable et reproductible. La base de données est exécutée
dans un conteneur, ce qui facilite le déploiement, évite les problèmes de configura
tion locale et assure la portabilité du projet sur différentes machines.



---

## Architecture et choix techniques

### Architecture MVC

L’architecture de l’application repose sur le modèle MVC (Model–View–Controller),
afin d’assurer une séparation claire des responsabilités et une meilleure maintenabilité
du code. Ce choix architectural permet de structurer l’application de manière logique et
évolutive, tout en facilitant la compréhension du projet.

Le Modèle représente la couche responsable de la gestion des données et de la logique
métier. Il regroupe les entités telles que les utilisateurs, les produits, les commandes et
les éléments de stock. Cette couche communique directement avec la base de données via
Hibernate ou JDBC selon le type de données manipulées. Les collections Java, comme
List et Map, sont utilisées pour stocker temporairement les données récupérées depuis la
base, permettant un traitement efficace en mémoire.

La Vuecorrespond à l’interface graphique développée avec JavaFX. Elle est chargée de
l’affichage des informations et de l’interaction avec l’utilisateur. Les vues ne contiennent
aucune logique métier, ce qui garantit une interface claire, réactive et indépendante des
traitements internes. Les données affichées proviennent du contrôleur sous forme de col
lections prêtes à être parcourues et affichées dans des composants graphiques comme les
tableaux et les listes.

Le Contrôleur joue un rôle central dans l’application. Il reçoit les actions de l’uti
lisateur, déclenche les traitements nécessaires dans le modèle et met à jour la vue en
conséquence. Les contrôleurs utilisent fréquemment les Streams Java pour filtrer, trier
ou transformer les collections de données, par exemple pour afficher uniquement les pro
duits disponibles en stock ou rechercher un produit spécifique par son nom. Cette approche
rend le code plus lisible, plus concis et plus performant.

## Gestion Hybride des Données

L’application adopte une gestion hybride des données afin de tirer parti des avantages
de différentes technologies d’accès à la base de données. Ce choix a été fait pour répondre
aux besoins spécifiques de chaque type de données manipulées.

Hibernate est utilisé pour la gestion des utilisateurs. Il simplifie les opérations CRUD
grâce à la persistance objet-relationnelle et réduit considérablement la quantité de code
SQL àécrire. Les entités utilisateurs sont automatiquement mappées aux tables de la base
MySQL, ce qui facilite la gestion des rôles, de l’authentification et des sessions. Les col
lections Hibernate permettent de charger et manipuler les données de manière structurée
avant leur exploitation dans l’application.

Le SQL natif, via JDBC, est utilisé pour la gestion des produits. Ce choix offre un
contrôle total sur les requêtes, notamment pour les opérations liées au stock et aux prix.
Il permet d’optimiser les performances et d’exécuter des requêtes précises adaptées aux
besoins métier. Les résultats des requêtes SQL sont ensuite convertis en objets Java et
stockés dans des collections, qui peuvent être traitées à l’aide des Streams pour effectuer
des calculs, des filtrages ou des regroupements.

Cette approche hybride améliore à la fois la flexibilité, la performance et la maîtrise
des accès aux données, tout en conservant une architecture cohérente et professionnelle.

## Multi-threading

Le multi-threading est intégré dans l’application afin d’améliorer l’expérience utilisa
teur et d’assurer une interface fluide. Dans une application graphique, certaines opérations
peuvent être longues, comme l’accès à la base de données ou la simulation d’un paiement.
Sans gestion des threads, ces opérations risqueraient de bloquer l’interface.

Pour éviter ce problème, les traitements lourds sont exécutés dans des threads séparés
du thread principal de JavaFX. Cela permet à l’interface de rester réactive, même lorsque
des opérations complexes sont en cours. Les résultats de ces traitements sont ensuite
transmis à la vue de manière sécurisée.

Le multi-threading est également utilisé pour simuler des scénarios réalistes, comme
le traitement d’un paiement ou la validation d’une commande.
Les données manipuléespar les threads sont souvent stockées dans des collections
thread-safe ou traitées de manière contrôlée afin d’éviter les conflits. 
Les Streams peuvent être utilisés pour analyser les résultats de ces traitements, 
par exemple pour mettre à jour l’état des commandes ou
recalculer le stock disponible.
Cette approche renforce la robustesse de l’application et démontre l’utilisation de
concepts Java avancés dans un contexte réel et professionnel.


---
## Modélisation

### Diagramme de classes

Le diagramme représente les entités principales comme User, Product, Order et CartItem.  
Les DAO gèrent la persistance.  
Les contrôleurs JavaFX assurent l’interaction avec l’interface.

<img width="3068" height="7808" alt="Onligne_Shopping" src="https://github.com/user-attachments/assets/320d9be3-ec1c-46fc-ae38-c5278e519110" />


---

## Authentification

L’utilisateur se connecte avec son email et son mot de passe.  
L’accès dépend du rôle associé au compte.

---

## Espace administrateur

L’administrateur accède à un tableau de bord central.  
Il peut gérer les utilisateurs et les produits.

---

## Gestion des utilisateurs

L’administrateur peut ajouter, modifier et supprimer des comptes.  
Les rôles contrôlent les droits d’accès.

---

## Gestion des produits

- Ajout de produits  
- Consultation du catalogue  
- Mise à jour des prix et du stock  
- Suppression des produits  

Toutes les opérations sont synchronisées avec la base MySQL.

---

## Conclusion

Ce projet met en pratique de manière concrète les concepts avancés du langage Java
étudiés au cours de la formation. Il intègre la programmation orientée objet, la gestion des
exceptions, l’utilisation des collections, des streams, ainsi que le multi-threading, afin de
répondre à des problématiques réelles rencontrées dans le développement d’applications
professionnelles. Cette mise en application permet de consolider les acquis théoriques à
travers un projet structuré et fonctionnel.

L’application repose sur une architecture claire et bien organisée, basée sur le modèle
MVC, garantissant une séparation nette entre la logique métier, l’interface graphique et
le contrôle des actions utilisateur. Cette organisation facilite la maintenance, la compré
hension du code et l’ajout de nouvelles fonctionnalités. L’interface graphique, développée
avec JavaFX, offre une navigation fluide et intuitive, permettant aux utilisateurs et à
l’administrateur d’interagir efficacement avec le système.

Enfin, ce projet a été conçu dans une optique d’évolutivité. Sa structure modulaire
permet d’envisager facilement des extensions futures, telles que l’ajout d’un système de
paiement réel, la gestion des commandes avancées, la mise en place de statistiques ou
encore une version web ou mobile. Il constitue ainsi une base solide pour le développement
d’une application e-commerce plus complète et plus robuste.
