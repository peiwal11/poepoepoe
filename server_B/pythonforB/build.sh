#!/bin/bash

echo "building docker image...."
docker build -t pysrimage .

echo "hopefully, docker image built successfully"
