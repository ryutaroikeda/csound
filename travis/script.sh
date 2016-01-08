echo "Running script.sh"

if [[ {1} = osx ]] ; then
  brew test csound
else
 cd $TRAVIS_BUILD_DIR/build  ;
 cmake .. -DBUILD_STATIC_LIBRARY=ON -DBUILD_TESTS=ON  ;
 make  ;
 make test  ;
 make regression  ;
 make csdtests ;
fi
