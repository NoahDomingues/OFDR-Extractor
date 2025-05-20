#!/usr/bin/env python3
# Python script to download and unzip the OFP Extractor project on your computer so you can browse the files locally.
# Last updated May 20 2025 - v1.1
# Noah Domingues - https://github.com/NoahDomingues/OFP-Extractor
import os
import sys
import zipfile
from io import BytesIO

try:
    import requests
except ImportError:
    print("The 'requests' module is required. Install it via: pip install requests")
    sys.exit(1)

def download_and_extract(url, extract_to='.'):
    print("Downloading repository from:")
    print(url)
    
    try:
        response = requests.get(url)
        response.raise_for_status()
    except Exception as e:
        print("Error during download:", e)
        sys.exit(1)
    
    print("Download complete. Extracting files...")
    
    try:
        with zipfile.ZipFile(BytesIO(response.content)) as zip_file:
            zip_file.extractall(extract_to)
    except zipfile.BadZipFile as e:
        print("Error: Downloaded file is not a valid zip archive:", e)
        sys.exit(1)
        
    print("Extraction complete. The repository has been extracted to:")
    print(os.path.abspath(extract_to))

if __name__ == '__main__':
    # GitHub repository ZIP URL for the default branch
    repo_zip_url = "https://github.com/NoahDomingues/OFP-Extractor/archive/refs/heads/main.zip"
    download_and_extract(repo_zip_url)
