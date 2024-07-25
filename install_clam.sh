#! /bin/bash

CURDIR=${PWD}

git clone -b fast-region https://github.com/seahorn/clam.git
cd clam
mkdir build && cd build
cmake -DCMAKE_INSTALL_PREFIX=${CURDIR}/clam-install -GNinja ../
cmake --build . --target extra                 
cmake --build . --target crab && cmake ..
cmake --build . --target install 

exit 0

