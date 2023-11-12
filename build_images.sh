#!/bin/sh

cd paper
./build_all_versions.sh
cd ..

cd fabric
./build_all_versions.sh
cd ..

cd velocity
docker build -t mrletsplay/velocity .
cd ..
