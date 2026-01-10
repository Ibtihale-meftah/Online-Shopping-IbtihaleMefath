# Solution pour l'erreur "Module com.emsi.onsp.onligne_shopping not found"

## Problème
L'erreur se produit car la commande Java essaie d'exécuter l'application en mode module (`-m`) mais le module compilé n'est pas dans le module path.

## Solutions

### Solution 1 : Utiliser le script run.bat (Recommandé)
Exécutez simplement le fichier `run.bat` qui compile automatiquement le projet et l'exécute correctement :
```bash
run.bat
```

### Solution 2 : Corriger la configuration IntelliJ IDEA

1. **Ouvrez la configuration d'exécution** (Run → Edit Configurations...)

2. **Dans "VM options"**, ajoutez `target/classes` au module path :
   ```
   --module-path C:\Users\admin\Desktop\java\javafx-sdk-25.0.1\lib;target/classes
   ```

3. **Dans "Main class"**, utilisez :
   ```
   com.emsi.onsp.onligne_shopping.Launcher
   ```
   (au lieu de `com.emsi.onsp.onligne_shopping/com.emsi.onsp.onligne_shopping.ShoppingApplication`)

4. **Assurez-vous que le projet est compilé** :
   - Build → Rebuild Project
   - Ou exécutez : `mvn clean compile`

### Solution 3 : Utiliser Maven pour exécuter
```bash
mvn clean javafx:run
```

### Solution 4 : Compiler manuellement puis exécuter
```bash
# Compiler
mvn clean compile

# Exécuter avec la commande corrigée
java --module-path "C:\Users\admin\Desktop\java\javafx-sdk-25.0.1\lib;target/classes" --add-modules javafx.controls,javafx.fxml -m com.emsi.onsp.onligne_shopping/com.emsi.onsp.onligne_shopping.Launcher
```

## Note importante
Le module compilé doit être dans `target/classes` pour que le mode module fonctionne. Assurez-vous toujours de compiler le projet avant de l'exécuter.

