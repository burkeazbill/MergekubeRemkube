#!env bash

INSTALL_PATH="/usr/local/bin"
mkdir -p $INSTALL_PATH
if [ ! -d "MergekubeRemkube" ]; then
  git clone https://github.com/burkeazbill/MergekubeRemkube.git
fi
cd MergekubeRemkube
git pull
chmod +x mergekube remkube

sudo cp {mergekube,remkube} $INSTALL_PATH
# Now run each to confirm they are installed:
mergekube
remkube