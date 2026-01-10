@echo off
set JAVA_HOME=C:\Users\admin\.jdks\openjdk-23.0.2
set JAVAFX_PATH=C:\Users\admin\Desktop\java\javafx-sdk-25.0.1\lib
set PROJECT_DIR=%~dp0
set TARGET_CLASSES=%PROJECT_DIR%target\classes

REM Compiler d'abord si nécessaire
if not exist "%TARGET_CLASSES%" (
    echo Compilation du projet...
    call mvnw.cmd clean compile
)

REM Exécuter avec Launcher (classe main normale, pas en mode module)
"%JAVA_HOME%\bin\java.exe" ^
  --module-path "%JAVAFX_PATH%" ^
  --add-modules javafx.controls,javafx.fxml ^
  -Dfile.encoding=UTF-8 ^
  -cp "%TARGET_CLASSES%;%JAVAFX_PATH%\javafx-controls.jar;%JAVAFX_PATH%\javafx-fxml.jar;%JAVAFX_PATH%\javafx-base.jar;%JAVAFX_PATH%\javafx-graphics.jar" ^
  com.emsi.onsp.onligne_shopping.Launcher

