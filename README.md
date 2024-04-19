# Batch-automation---HTML-CSS-JS
a little batch script for making templates for the HTML + CSS + JS setup

## HOWTO USE:
### 1. Make batch folder in C:\Users%AppData%\Code\User, and jsApp.bat there
### 2. Use New-Item cmdlet to create a symbolic link to the script in the elevated command prompt:
```
cd C:\Windows\System32
mklink jsApp.bat "C:\Users\%AppData%\Roaming\Code\User\batch\jsApp.bat"
```
### 3. Open the internal Terminal in VS-Code
 - type `jsApp.bat hello-canvas-full` from within the folder you want to create the structure in
 - the files should be created and opened including all templates 😉
