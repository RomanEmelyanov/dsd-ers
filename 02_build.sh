#!/bin/bash

rm -rf ./dsd ./dsd-fme
# source https://github.com/lwvmobile/dsd-fme/
tar xzf dsd-fme-20230915.tar.gz
mv dsd-fme-20230915 dsd-fme
cd dsd-fme
echo >> CMakeLists.txt
echo "find_package(OpenSSL REQUIRED)" >> CMakeLists.txt
echo "target_link_libraries(dsd-fme OpenSSL::SSL)" >> CMakeLists.txt

mv ./src/dmr_dburst.c ./src/dmr_dburst.c.org
cp ../src/dmr_dburst.c ./src/dmr_dburst.c

mv ./src/dmr_le.c ./src/dmr_le.c.org
cp ../src/dmr_le.c ./src/dmr_le.c

mv ./src/dsd_mbe.c ./src/dsd_mbe.c.org
cp ../src/dsd_mbe.c ./src/dsd_mbe.c

mv ./include/dsd.h ./include/dsd.h.org
cp ../src/dsd.h ./include/dsd.h

mkdir build
cd build
cmake ..
make
cp dsd-fme ../../dsd
cd ../..
strip dsd
