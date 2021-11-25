#!/bin/bash

echo "Building docker image..."
docker build -t errorpage .

echo "Running application..."
docker run --rm \
  --name errorpage \
  -p 8080:8080 \
  -it errorpage
