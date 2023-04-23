#!/bin/bash

#!/bin/sh

declare -A versions
#versions["1.8.8"]="openjdk8"
#versions["1.9.4"]="openjdk8"
#versions["1.10.2"]="openjdk8"
#versions["1.11.2"]="openjdk8"
#versions["1.12.2"]="openjdk8"
#versions["1.13.2"]="openjdk8"
versions["1.14.4"]="openjdk8"
versions["1.15.2"]="openjdk8"
versions["1.16.5"]="openjdk8"
versions["1.17.1"]="openjdk8"
versions["1.18.2"]="openjdk17"
versions["1.19.4"]="openjdk17"

for version in "${!versions[@]}"; do
	java=${versions[$version]}
	echo "Building version $version, JAVA=$java"
	docker build --build-arg MC_VERSION=$version --build-arg JAVA=$java -t mrletsplay/fabric:$version .
done
