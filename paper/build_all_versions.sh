#!/bin/bash

#!/bin/sh

declare -A versions
versions["1.8.8"]="openjdk8 false"
versions["1.9.4"]="openjdk8 false"
versions["1.10.2"]="openjdk8 false"
versions["1.11.2"]="openjdk8 false"
versions["1.12.2"]="openjdk8 false"
versions["1.13.2"]="openjdk8 false"
versions["1.14.4"]="openjdk8 false"
versions["1.15.2"]="openjdk8 false"
versions["1.16.5"]="openjdk8 false"
versions["1.17.1"]="openjdk8 false"
versions["1.18.2"]="openjdk17 false"
versions["1.19.4"]="openjdk17 true"

for version in "${!versions[@]}"; do
	params=(${versions[$version]})
	echo "Building version $version, JAVA=${params[0]}, PAPER_NEW_CONFIG=${params[1]}"
	docker build --build-arg MC_VERSION=$version --build-arg JAVA=${params[0]} --build-arg PAPER_NEW_CONFIG=${params[1]} -t mrletsplay/paper:$version .
done
