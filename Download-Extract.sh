#!/bin/bash

pushd /opt
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
rm -rf /opt/nvim
tar -C /opt -xzf nvim-linux64.tar.gz
ln -sf /opt/nvim-linux64/bin/nvim /usr/local/bin/nvim
popd

# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}

git clone https://github.com/LazyVim/starter ~/.config/nvim
# remove PROJECT git folder to be able to add it to PERSONAL git repo 
rm -rf ~/.config/nvim/.git

nvim

#!/bin/bash

# Define the URL of the file to download
FILE_URL="https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz"

# Define the desired local filename for the downloaded archive
LOCAL_FILENAME="nvim-linux-x86_64.tar.gz"

# Define the directory where the content should be extracted
EXTRACT_DIR="/opt"

# Create the extraction directory if it doesn't exist
mkdir -p "$EXTRACT_DIR"

# Download the file using curl
echo "Downloading $FILE_URL..."
curl -L -o "$LOCAL_FILENAME" "$FILE_URL"

# Check if the download was successful
if [ $? -eq 0 ]; then
  echo "Download successful. Extracting $LOCAL_FILENAME to $EXTRACT_DIR..."
  
  # Extract the archive based on its type
  case "$LOCAL_FILENAME" in
    *.tar.gz|*.tgz)
      tar -xzf "$LOCAL_FILENAME" -C "$EXTRACT_DIR"
      ;;
    *.zip)
      unzip "$LOCAL_FILENAME" -d "$EXTRACT_DIR"
      ;;
    *.tar.bz2|*.tbz)
      tar -xjf "$LOCAL_FILENAME" -C "$EXTRACT_DIR"
      ;;
    *.tar)
      tar -xf "$LOCAL_FILENAME" -C "$EXTRACT_DIR"
      ;;
    *)
      echo "Unsupported archive format. Manual extraction may be required."
      ;;
  esac

  # Check if extraction was successful
  if [ $? -eq 0 ]; then
    echo "Extraction complete."
    # Optionally, remove the downloaded archive
    # rm "$LOCAL_FILENAME"
  else
    echo "Error during extraction."
  fi
else
  echo "Error during download."
fi
