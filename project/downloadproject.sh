#!/bin/bash
# A simple shell script to download and extract the OFP-Extractor repository

# URL for the GitHub repository ZIP (default branch is "main")
REPO_ZIP_URL="https://github.com/NoahDomingues/OFP-Extractor/archive/refs/heads/main.zip"
ZIP_FILE="OFP-Extractor-main.zip"

# Check if required commands are available
if ! command -v curl &> /dev/null; then
  echo "Error: 'curl' is not installed. Please install it and try again."
  exit 1
fi

if ! command -v unzip &> /dev/null; then
  echo "Error: 'unzip' is not installed. Please install it and try again."
  exit 1
fi

# Download the repository ZIP file
echo "Downloading repository from $REPO_ZIP_URL..."
curl -L "$REPO_ZIP_URL" -o "$ZIP_FILE"
if [ $? -ne 0 ]; then
  echo "Error: Failed to download the repository."
  exit 1
fi

# Extract the ZIP file in the current directory
echo "Download complete. Extracting files..."
unzip -q "$ZIP_FILE"
if [ $? -ne 0 ]; then
  echo "Error: Extraction failed."
  exit 1
fi

# Clean up the downloaded ZIP file (optional)
rm "$ZIP_FILE"

# Notify the user of successful extraction
EXTRACTED_DIR=$(unzip -Z -1 "$ZIP_FILE" 2>/dev/null | head -n1 | cut -d/ -f1)
if [ -z "$EXTRACTED_DIR" ]; then
  # Default to a known folder name if extraction folder could not be determined
  EXTRACTED_DIR="OFP-Extractor-main"
fi

echo "Extraction complete. The repository is available in: $(pwd)/$EXTRACTED_DIR"
