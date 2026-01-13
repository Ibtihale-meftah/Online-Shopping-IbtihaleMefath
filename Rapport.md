# Rapport de Projet  
## Application Online Shopping  
### Application e-commerce JavaFX  
Gestion des utilisateurs et des produits

![Uploading mef.jpg…]()



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

Le projet vise à renforcer les compétences en programmation orientée objet.  
Il applique l’encapsulation, l’héritage, le polymorphisme et l’abstraction.  
Il met en œuvre Hibernate pour la persistance des données et le modèle MVC pour une architecture claire.  
L’interface JavaFX assure une interaction simple et ergonomique.

### Fonctionnalités

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

---

## Architecture et choix techniques

### Architecture MVC

- Modèle : logique métier et accès aux données  
- Vue : interface graphique JavaFX  
- Contrôleur : gestion des actions utilisateur  

### Gestion hybride des données

Hibernate est utilisé pour les utilisateurs.  
JDBC avec SQL natif est utilisé pour les produits afin de mieux gérer le stock et les performances.

### Multi-threading

Les opérations lourdes sont exécutées dans des threads séparés.  
Cela garantit une interface fluide et réactive.

---

## Modélisation

### Diagramme de classes

Le diagramme représente les entités principales comme User, Product, Order et CartItem.  
Les DAO gèrent la persistance.  
Les contrôleurs JavaFX assurent l’interaction avec l’interface.

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

Ce projet applique concrètement les concepts avancés de Java.  
L’architecture MVC facilite la maintenance et l’évolution.  
L’application constitue une base solide pour une solution e-commerce plus complète.
