@ECHO OFF

SETLOCAL ENABLEDELAYEDEXPANSION

REM Get the first argument as the folder name
SET "folderName=%~1"

REM Check if folder name is provided
IF "%folderName%"=="" GOTO NoFolderName

REM Define template folder location (modify this path)
SET "templateFolder=%AppData%\Code\User\TemplateFolder"

REM Check if template folder exists
IF NOT EXIST "!templateFolder!" (
  ECHO Error: Template folder "!templateFolder!" does not exist.
  GOTO Finished
)

REM Create the main folder structure within the new folder
MKDIR "!folderName!"
MKDIR "!folderName!\src"
MKDIR "!folderName!\src\components"
MKDIR "!folderName!\src\components\main-view"

REM Copy the entire template folder content to the new folder
XCOPY "!templateFolder!\*.*" "!folderName!\*" /E /Y /I

REM Open the main file in VS Code (modify path if needed)
start "" "%LocalAppData%\Programs\Microsoft VS Code\Code.exe" "!folderName!\src\components\main-view\main-view.jsx"

ECHO Batch script completed! The React project structure is created in folder: "!folderName!"

GOTO Finished

:NoFolderName
ECHO Please provide a folder name as the first argument.

:Finished

ENDLOCAL
