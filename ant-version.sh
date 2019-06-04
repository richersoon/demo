#!/bin/bash
ANT_DIRECTORY=/data/Installed/apache-ant-1.10.6/bin
EXPECTED_VERSION=1.10.5

VERSION="$(sh "$ANT_DIRECTORY"/ant -version | grep -Po '(?<=version)\W*\K[^ ]*')"
echo Ant version: "$VERSION"

if [ $VERSION != $EXPECTED_VERSION ]; then
	echo Invalid ant version
	exit 1
fi	