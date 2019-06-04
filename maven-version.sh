#!/bin/bash
MAVEN_DIRECTORY=/data/Installed/apache-maven-3.0.5/bin
EXPECTED_VERSION=3.0.5

VERSION="$(sh "$MAVEN_DIRECTORY"/mvn -version | grep -Po '(?<=Apache Maven)\W*\K[^ ]*')"
echo Maven version: "$VERSION"

if [ $VERSION != $EXPECTED_VERSION ]; then
	echo Invalid maven version
	exit 1
fi	