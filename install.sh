#!/bin/sh
PLUGIN_DIR="/usr/lib/enigma2/python/Plugins/Extensions/STB_UNION E2"
REPO_URL="https://github.com/ilyasM6/STB_UNION-E2/raw/refs/heads/main/STB_UNION-E2.tar.gz"

# Create plugin directory
mkdir -p "$PLUGIN_DIR"

# Download plugin files
wget -q -O "$PLUGIN_DIR/plugin.py" "$REPO_URL/plugin.py"
wget -q -O "$PLUGIN_DIR/__init__.py" "$REPO_URL/__init__.py"
wget -q -O "$PLUGIN_DIR/plugin.png" "$REPO_URL/plugin.png"

### Check if plugin installed correctly
if [ ! -d '/usr/lib/enigma2/python/Plugins/Extensions/STB_UNION E2' ]; then
  echo "Some thing wrong .. Plugin not installed"
  exit 1
fi

sync
echo "#########################################################"
echo "#      STB_UNION E2 INSTALLED SUCCESSFULLY              #"
echo "#                   by Said M.S                         #"              
echo "#                     support                           #"
echo "#########################################################"
echo "#           your Device will RESTART Now                #"
echo "#########################################################"
sleep 3
killall enigma2
exit 0
