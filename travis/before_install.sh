if [[ ${1} = linux ]] ; then 
  sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test ;
  sudo apt-get update -qq ;
fi
if [[ ${1} = osx ]] ; then
  brew update
fi
