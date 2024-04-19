@echo off
setlocal

:: Get the first argument as the folder name
set "folderName=%~1"

:: Create directories
mkdir %folderName%
cd %folderName%
mkdir css
mkdir js

:: Create files
echo ^<!DOCTYPE html^> > index.html
echo ^<html lang="en"^> >> index.html
echo ^<head^> >> index.html
echo ^<meta charset="UTF-8"^> >> index.html
echo ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^> >> index.html
echo ^<title^>JS App^</title^> >> index.html
echo ^<link rel="stylesheet" href="./css/styles.css"^> >> index.html
echo ^</head^> >> index.html
echo ^<body^> >> index.html
echo( >> index.html
echo ^<script src="./js/scripts.js"^>^</script^> >> index.html
echo ^</body^> >> index.html
echo ^</html^> >> index.html

echo html, body { >> css\styles.css
echo   background-color: #3b3b3b; >> css\styles.css
echo   color: lightgray; >> css\styles.css
echo   font-family: Arial, sans-serif; >> css\styles.css
echo } >> css\styles.css

echo (() =^> { >> js\scripts.js
echo. >> js\scripts.js
echo })(); >> js\scripts.js

:: Change to the parent directory
pushd ..

:: Open the files in VS Code
start "" "C:\Users\YourUsername\AppData\Local\Programs\Microsoft VS Code\Code.exe" "%folderName%\index.html"
start "" "C:\Users\YourUsername\AppData\Local\Programs\Microsoft VS Code\Code.exe" "%folderName%\css\styles.css"
start "" "C:\Users\YourUsername\AppData\Local\Programs\Microsoft VS Code\Code.exe" "%folderName%\js\scripts.js"

:: Change back to the original directory
popd
