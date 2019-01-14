#!/bin/bash

rm -rf ./files
mkdir -p files/data

echo "copy artifacts............"
cp -r /home/chihchungwang/Documents/git/data/bears/  files/data/
cp -r /home/chihchungwang/Documents/git/github/chwang733/fastai-v3-examples/ComputerVision/  files/
cp -r /home/chihchungwang/.fastai/  files/
cp -r /home/chihchungwang/.torch/  files/

echo "docker build..............."
docker build -t fastai_v1:v3-cpu-files .
