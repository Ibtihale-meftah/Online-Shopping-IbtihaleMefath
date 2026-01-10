# Configuration IntelliJ IDEA pour corriger l'erreur de module

## Problème
L'erreur "Module com.emsi.onsp.onligne_shopping not found" se produit car le module compilé n'est pas dans le module path lors de l'exécution.

## Solution : Modifier la configuration d'exécution

### Étape 1 : Compiler le projet
1. Dans IntelliJ IDEA, allez dans **Build → Rebuild Project**
2. Attendez que la compilation soit terminée

### Étape 2 : Modifier la configuration d'exécution

1. **Ouvrez la configuration d'exécution** :
   - Cliquez sur la flèche à côté du bouton "Run" en haut
   - Sélectionnez **"Edit Configurations..."**
   - Ou allez dans **Run → Edit Configurations...**

2. **Sélectionnez ou créez une configuration "Application"**

3. **Configurez les paramètres suivants** :
   - **Name** : `ShoppingApplication`
   - **Main class** : `com.emsi.onsp.onligne_shopping.Launcher`
   - **Module** : `Onligne_Shopping`
   - **VM options** : 
     ```
     --module-path "C:\Users\admin\Desktop\java\javafx-sdk-25.0.1\lib;$PROJECT_DIR$\out\production\Onligne_Shopping" --add-modules javafx.controls,javafx.fxml -Dfile.encoding=UTF-8 -Dsun.stdout.encoding=UTF-8 -Dsun.stderr.encoding=UTF-8
     ```
   - **Working directory** : `$PROJECT_DIR$`

4. **Cochez "Build" dans "Before launch"** pour compiler automatiquement avant l'exécution

5. Cliquez sur **"Apply"** puis **"OK"**

### Étape 3 : Exécuter
Cliquez sur le bouton "Run" ou utilisez **Shift+F10**

## Alternative : Utiliser Maven

Si la configuration IntelliJ ne fonctionne pas, utilisez Maven :

1. Ouvrez le terminal dans IntelliJ (Alt+F12)
2. Exécutez :
   ```bash
   mvn clean compile javafx:run
   ```

## Note importante
- IntelliJ compile vers `out/production/Onligne_Shopping` (pas `target/classes`)
- Le module path doit inclure **les deux** : le chemin JavaFX ET le répertoire de sortie du projet
- Assurez-vous que le projet est compilé avant d'exécuter

