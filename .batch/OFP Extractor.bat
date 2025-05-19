@echo off
title Operation Flashpoint Game Extractor by Noah Domingues
color A
echo(
echo ========= Operation Flashpoint (CM) Game Extractor - v1.1 =========
echo ======================== By Noah Domingues ========================
echo(
echo ------------------- Based on QuickBMS by Aluigi -------------------
echo(
echo -------- OFP Discord Server: https://discord.gg/Z88NnTgpWU --------
echo(

echo Would you like to extract Operation Flashpoint's game files?
echo (Press ENTER to continue or 'n' to quit)
set /p user_input=

if "%user_input%"=="" goto continue
if /i "%user_input%"=="y" goto continue
if /i "%user_input%"=="yes" goto continue
if /i "%user_input%"=="n" goto quit
if /i "%user_input%"=="no" goto quit

echo Invalid input, exiting...
goto quit

:quit
echo Exiting OFP Game Extractor...
exit

:continue
echo Preparing to extract...

echo(

:: Check for game executables
if exist "OFDR.exe" (
    color 6
    echo Operation Flashpoint: Dragon Rising located, proceeding...
) else if exist "OFRR.exe" (
    color 4
    echo Operation Flashpoint: Red River located, proceeding...
) else (
    color 4F
    title OFP Game Extractor - Error!
    echo ERROR: Please put OFP Extractor inside your game installation directory and try again!
    pause >nul
    exit /b
)

:: Check for win_000.nfs
if not exist "win_000.nfs" (
    color 4F
    title OFP Game Extractor - Error!
    echo ERROR: win_000.nfs file not found! Please put OFP Extractor inside your game installation directory and try again!
    pause >nul
    exit /b
) else (
    echo NFS file located, proceeding...
)

:: Check for win_000.full
if not exist "win_000.full" (
    echo WARNING: win_000.full archive does not exist, creating it now...
    title OFP Game Extractor - Compiling Archives...
    ExtractionAgent compile.bms win_000.nfs "."
    echo win_000.full archive compiled successfully, proceeding...
    )
) else (
    echo win_000 archive located, proceeding...
)

:: Check if extraction directory already exists, and act accordingly
if exist "_extract\" (
    title OFP Game Extractor - Awaiting Input!
    echo WARNING: Extraction directory already exists! Please rename, delete or move the _extract folder to avoid overwriting existing files, and then try again!
    echo Do you want to delete the existing files? (Y/N)
    
    set /p userChoice=
    
    if /i "%userChoice%"=="Y" goto continue
    if /i "%userChoice%"=="YES" goto continue

    echo Operation cancelled. No files were overwritten.
    pause >nul
    exit /b
)

:continue
title OFP Game Extractor - Deleting Extraction Directory...
echo(
echo Deleting existing _extract directory, this may take a while...
rmdir /s /q "_extract"
echo(
echo Existing _extract directory deleted successfully, proceeding...
echo(
echo Creating extraction directory now...
echo(
mkdir "_extract"
echo Extraction directory created successfully, proceeding...


:: Unpack game files
title OFP Game Extractor - Extracting Files...
echo(
echo Beginning stage 1 extraction, this may take a while...
ExtractionAgent -K extract.bms win_000.nfs "_extract"
echo(
echo Extraction stage 1 complete, proceeding to stage 2...
echo(

:: Unpack game terrain file (>1GB)
echo(
echo Beginning stage 2 extraction, this may take a while...
echo(
ExtractionAgent -k extractterrain.bms win_000.nfs "_extract\terrain"
echo(
echo Extraction stage 2 complete.

echo(

color A
title OFP Game Extractor - Extraction Successful!
echo ===================== GAME EXTRACTED SUCCESSFULLY =====================

echo(

:: Ask user if they would like to create template directories in data_win for modded game files
setlocal

echo Would you like to make directories in your data_win folder to help you add modded files to the game (this is designed for Dragon Rising, but Red River may share a similar directory structure)? (Y/N)
set /p user_input=

if /i "%user_input%"=="y" goto make_dirs
if /i "%user_input%"=="yes" goto make_dirs
if /i "%user_input%"=="n" goto continue
if /i "%user_input%"=="no" goto continue

echo Invalid input, proceeding without making directories...
goto continue

:make_dirs
echo(
echo Creating directories... (some errors might occur, you can safely ignore these)
DirectoryMakerAgent.exe
echo(
echo Directories created successfully!
title OFP Game Extractor - Extraction Successful!

:continue
echo(

echo WARNING: The files have been extracted to the "_extract" directory in your game installation folder. In this folder, you may come accross files with "_00000001" in the filename. THESE FILES MAY BE CORRUPTED. However, this is not an issue; these files are not part of the game and can safely be deleted. So far, I have only found a few files that extract corrupted, such as damage_data.xml in the /damage_data folder. Not all XML files that appear corrupted are actually corrupted; some of these are simply binary XMLs that need to be converted to standard XML format using Petar's Ego File Converter. More information is available on GitHub: https://github.com/NoahDomingues/OFP-Extractor

echo(

echo Thank you for using my game file extractor for Operation Flashpoint, I hope it works and I look forward to seeing what you make with the extracted files!

echo(

echo Don't forget to join the Operation Flashpoint Discord server! https://discord.gg/Z88NnTgpWU

echo(

endlocal

pause
