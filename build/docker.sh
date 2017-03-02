#!/bin/bash

VERSION=$1

ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )/.." && pwd )"

cp "$ROOT/target/*.jar" "$ROOT/docker"

cd "$ROOT/docker"
docker build -t evansj/test-app:latest -t evansj/test-app:$VERSION .

