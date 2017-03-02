#!/bin/bash

VERSION=$1

ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"

cd $ROOT

echo "in directory $ROOT"

cp target/*.jar docker

cd docker
docker build -t evansj/test-app:latest -t evansj/test-app:$VERSION .

