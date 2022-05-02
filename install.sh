#!env bash
if [ ! -d "MergekubeRemkube" ]; then
  git clone https://github.com/burkeazbill/MergekubeRemkube.git
fi
cd MergekubeRemkube
git pull
chmod +x mergekube remkube

# Set install path to first matching folder found in path:
case :$PATH: in
  *:$HOME/.local/bin:*) 
    INSTALL_PATH="$HOME/.local/bin"
  ;; # do nothing, it's there
  *:$HOME/bin:*) 
    INSTALL_PATH="$HOME/bin"
  ;; # do nothing, it's there
  *:/usr/local/bin:*) 
    INSTALL_PATH="/usr/local/bin"
  ;; # do nothing, it's there
  *) echo "no match found" >&2;;
esac
CMD_PREFIX=""
if [ $INSTALL_PATH == "/usr/local/bin" ]; then
  CMD_PREFIX="sudo "
fi

echo "Executing Command: ${CMD_PREFIX}cp {mergekube,remkube} $INSTALL_PATH"
${CMD_PREFIX}cp {mergekube,remkube} $INSTALL_PATH

cd ..
# Now confirm they are installed:
which mergekube
which remkube
