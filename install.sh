#!env bash

INSTALL_PATH="/usr/local/bin"
mkdir -p $INSTALL_PATH
git clone https://github.com/burkeazbill/MergekubeRemkube.git
chmod +x MergekubeRemkube/mergekube
chmod +x MergekubeRemkube/remkube

sudo cp MergekubeRemkube/{mergekube,remkube} $INSTALL_PATH
# Now run each to confirm they are installed:
mergekube
remkube