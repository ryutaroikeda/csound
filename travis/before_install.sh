echo "Running before_install.sh"
if [[ ${1} = osx ]] ; then
  brew update
else
  sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test ;
  sudo apt-get update -qq ;
fi
