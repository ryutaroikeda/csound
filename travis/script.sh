if [[ {1} = linux ]] ; then
  cd $TRAVIS_BUILD_DIR/build  ;
 cmake .. -DBUILD_STATIC_LIBRARY=ON -DBUILD_TESTS=ON  ;
 make  ;
 make test  ;
 make regression  ;
 make csdtests ;
fi
if [[ {1} = osx ]] ; then
  brew test csound
fi
