#!/bin/sh

VERSION=$1

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

cp "$DIR/../target/*.jar" "$DIR/docker"

cd "$DIR/docker"
docker build -t evansj/test-app:latest -t evansj/test-app:$VERSION .

