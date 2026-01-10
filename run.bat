@echo off
set JAVA_HOME=C:\Users\admin\.jdks\openjdk-23.0.2
set JAVAFX_PATH=C:\Users\admin\Desktop\java\javafx-sdk-25.0.1\lib
set PROJECT_DIR=%~dp0
set TARGET_CLASSES=%PROJECT_DIR%target\classes

REM Vérifier que le projet est compilé
if not exist "%TARGET_CLASSES%\com\emsi\onsp\onligne_shopping\ShoppingApplication.class" (
    echo Le projet n'est pas compile. Compilation en cours...
    if exist "%PROJECT_DIR%mvnw.cmd" (
        call "%PROJECT_DIR%mvnw.cmd" clean compile
    ) else (
        echo Erreur: mvnw.cmd introuvable. Veuillez compiler le projet manuellement.
        exit /b 1
    )
)

REM Exécuter en mode module avec target/classes dans le module path
"%JAVA_HOME%\bin\java.exe" ^
  --module-path "%JAVAFX_PATH%;%TARGET_CLASSES%" ^
  --add-modules javafx.controls,javafx.fxml ^
  -Dfile.encoding=UTF-8 ^
  -Dsun.stdout.encoding=UTF-8 ^
  -Dsun.stderr.encoding=UTF-8 ^
  -m com.emsi.onsp.onligne_shopping/com.emsi.onsp.onligne_shopping.Launcher

