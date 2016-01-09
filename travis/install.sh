echo "Running install.sh"

if [[ ${1} = osx ]] ; then
  brew tap ryutaroikeda/homebrew-csound
  brew install ryutaroikeda/csound/csound
else
      # Have an uptodate libc6
      sudo apt-get install -qq g++-4.8
      export CXX="g++-4.8" 
      sudo apt-get install -qq libc6-dev
      sudo apt-get install -qq cmake libsndfile1-dev libasound2-dev libjack-dev portaudio19-dev libportmidi-dev libpulse-dev swig liblua5.1-0-dev python-dev puredata-dev default-jdk libfltk1.1-dev libfluidsynth-dev liblo-dev fluid ladspa-sdk libboost-dev libboost-serialization-dev libpng-dev dssi-dev libstk0-dev libgmm++-dev bison flex libportsmf-dev libeigen3-dev libcunit1-dev python-tk
fi
