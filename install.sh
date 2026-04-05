#!/bin/sh
PLUGIN_DIR="/usr/lib/enigma2/python/Plugins/Extensions/DSTB_UNION E2"
REPO_URL="https://github.com/ilyasM6/STB_UNION-E2/raw/refs/heads/main/STB_UNION-E2.tar.gz"

mkdir -p "$PLUGIN_DIR"


### Check if plugin installed correctly
if [ ! -d '/usr/lib/enigma2/python/Plugins/Extensions/STB_UNION E2' ]; then
  echo "Some thing wrong .. Plugin not installed"
  exit 1
fi

sync
echo "#########################################################"
echo "#      STB_UNION E2 INSTALLED SUCCESSFULLY              #"
echo "#                   by SAID M.S                         #"              
echo "#                     support                           #"
echo "#########################################################"
echo "#           your Device will RESTART Now                #"
echo "#########################################################"
sleep 3
killall enigma2
exit 0
