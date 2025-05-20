@echo off
setlocal enabledelayedexpansion
:: Last updated May 20 2025 - v1.1
:: Noah Domingues - https://github.com/NoahDomingues/OFP-Extractor

:: URL for the GitHub repository ZIP (default branch is "main")
set "repoZipUrl=https://github.com/NoahDomingues/OFP-Extractor/archive/refs/heads/main.zip"
set "zipFile=OFP-Extractor-main.zip"

echo Downloading repository from %repoZipUrl% ...
:: Use PowerShell to download the ZIP file
powershell -NoProfile -Command "try { Invoke-WebRequest -Uri '%repoZipUrl%' -OutFile '%zipFile%' } catch { exit 1 }"
if errorlevel 1 (
    echo Error: Failed to download the repository.
    goto end
)

echo Download complete. Extracting files...
:: Use PowerShell to extract the ZIP file into the current directory
powershell -NoProfile -Command "try { Expand-Archive -Path '%zipFile%' -DestinationPath . -Force } catch { exit 1 }"
if errorlevel 1 (
    echo Error: Failed to extract the archive.
    goto end
)

echo Cleaning up downloaded ZIP file...
del "%zipFile%"
if errorlevel 1 (
    echo Warning: Could not delete %zipFile%.
)

echo Extraction complete. The repository has been extracted to: %cd%

:end
pause
