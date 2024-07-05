#!/bin/bash
set -e


REGISTRY=registry.inventec
echo "creating nginx image.."
docker build -t nginximage . 

echo "hopefully nginx image build succesfully"
