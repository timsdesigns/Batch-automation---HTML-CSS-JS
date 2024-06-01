# Batch-automation---HTML-CSS-JS
a little batch script for making templates for the HTML + CSS + JS setup
(with IIFE and dark mode to speed things up)

## HOWTO USE - Standard setup for **jsApp**:
### 1. Make batch folder in C:\Users%AppData%\Code\User, and add the jsApp.bat there
### 2. Use New-Item cmdlet to create a symbolic link to the script in the elevated command prompt:
```
cd C:\Windows\System32
mklink jsApp.bat "C:\Users\%AppData%\Roaming\Code\User\batch\jsApp.bat"
```
### 3. Open the internal Terminal in VS-Code
 - type `jsApp.bat hello-canvas-full` from within the folder you want to create the structure in
 - the files should be created and opened including all templates 😉

## HOWTO USE - Standard setup for **reactApp**:
### 1. Make batch folder in C:\Users%AppData%\Code\User, and add the reactApp.bat there
### 2. Copy the `TemplateFolder` folder in C:\Users%AppData%\Code\User
### 3. Use New-Item cmdlet to create a symbolic link to the script in the elevated command prompt:
```
cd C:\Windows\System32
mklink reactApp.bat "C:\Users\%AppData%\Roaming\Code\User\batch\reactApp.bat"
```
### 4. Open the internal Terminal in VS-Code
 - type `reactApp.bat hello-react-app` from within the folder you want to create the structure in
 - the files should be created and opened including all templates 😉

## Troubleshooting:
 - this setup assumes that your visual studio executable is installed under:
   - %LocalAppData%\Programs\Microsoft VS Code\Code.exe
