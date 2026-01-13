# Compte Rendu du Projet : Online Shopping
Nom & Prénom : Meftah Ibtihale

4IIR G2 

EMSI MY

![mef](https://github.com/user-attachments/assets/0ec3681b-014d-4811-8703-6e75fd8e50a4)



## 1. Description du Projet

Ce projet est une application de bureau **e-commerce** (vente de meubles et immobilier) développée en **Java** avec l'interface graphique **JavaFX**.
L'application permet deux types d'accès :
-   **Admin** : Gestion des produits (**CRUD avec SQL Natif**), gestion des utilisateurs.
-   **Client** : Consultation des produits, ajout au panier, passage de commande.

L'architecture suit le modèle **MVC (Model-View-Controller)** pour séparer les données, l'affichage et la logique métier.

## 2. Explication Technique du Code

Voici comment les technologies clés sont utilisées et adaptées dans une architecture hybride :

### A. Collections (`java.util.*`)
Les collections sont utilisées pour stocker des groupes d'objets en mémoire.
*   **Utilisation** :
    *   **`List` / `ArrayList`** : Utilisées pour manipuler les données.
    *   **Exemple Concret** : Dans `ProductDAO.java`, les résultats de la requête SQL native sont stockés dans une `ArrayList` avant d'être retournés.
    ```java
    List<Product> products = new ArrayList<>();
    ```

### B. Streams (`java.util.stream.*`)
Les Streams permettent de traiter les collections de manière fonctionnelle.
*   **Utilisation** : Calculer des totaux.
*   **Exemple Concret** : Dans `CartManager.java`, la méthode `getTotal()` utilise un stream pour calculer le prix total du panier.
    ```java
    return cart.stream().mapToDouble(CartItem::getTotal).sum();
    ```

### C. Threads (Multi-threading)
Les threads permettent d'exécuter des tâches en parallèle sans bloquer l'interface utilisateur (UI).
*   **Exemple 1 (Audit)** : `LoginController.java` lance un thread pour simuler un log de connexion.
*   **Exemple 2 (Paiement)** : `CartController.java` lance un thread pour simuler le délai bancaire.
    ```java
    new Thread(() -> {
        Thread.sleep(3000); // Simulation délai
        System.out.println("Paiement validé...");
    }).start();
    ```

### D. Hibernate & JDBC (Approche Hybride)
Le projet utilise une approche mixte pour démontrer la flexibilité :
*   **Hibernate (ORM)** : Utilisé pour la gestion des utilisateurs (`UserDAO`).
    *   Les sessions sont ouvertes via `HibernateUtil.getSessionFactory().openSession()` pour garantir la gestion thread-safe des connexions.
*   **Native SQL / JDBC** : Utilisé pour la gestion des produits (`ProductDAO`), pour un contrôle précis des colonnes.
    *   **Requête Native** : `SELECT id, name, price, stock FROM products`.
    *   **Mappage Manuel** : Les résultats bruts (`Object[]`) sont convertis manuellement en objets `Product`.
    ```java
    // Extrait de ProductDAO.java
    try (Session session = HibernateUtil.getSessionFactory().openSession()) {
        List<Object[]> rows = session.createNativeQuery(sql).getResultList();
        for (Object[] row : rows) {
             Product p = new Product();
             p.setId(((Number) row[0]).intValue());
             p.setStock(((Number) row[3]).intValue()); // Gestion du stock
             products.add(p);
        }
    }
    ```

### E. Modèle de Données (`Product`)
La classe `Product` a été enrichie pour inclure la gestion des stocks.
*   Champs : `id`, `name`, `price`, `description`, `image`, `stock`.
*   Elle dispose d'un constructeur par défaut (No-Arg) et d'un constructeur complet pour faciliter l'instanciation lors du mapping manuel.

### F. DAO Pattern
Ce pattern isole l'accès aux données. Même si l'implémentation interne change (Hibernate vs SQL Natif), les contrôleurs (`AdminProductsController`) appellent toujours les mêmes méthodes (`dao.getAll()`).

### G. Docker
Docker conteneurise la base de données MySQL 8.0, assurant que l'environnement de développement est identique pour tous.
*   Configuré via `docker-compose.yml` sur le port `3306`.

