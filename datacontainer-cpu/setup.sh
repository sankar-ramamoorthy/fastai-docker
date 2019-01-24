#!/bin/bash

rm -rf ./files
mkdir -p files/data

echo "copy artifacts............"
cp -r /home/chihchungwang/Documents/git/data/bears/  files/data/
cp -r /home/chihchungwang/Documents/git/data/rossmann/  files/data/
cp -r /home/chihchungwang/Documents/git/github/chwang733/fastai-v3-examples/ComputerVision/  files/
cp -r /home/chihchungwang/Documents/git/course-v3/  files/
cp -r /home/chihchungwang/.fastai/  files/
cp -r /home/chihchungwang/.torch/  files/
cp ./createSimLink.sh  files/

echo "docker build..............."
docker build -t chwang733/fastai_v1:dc .
