What this Dockerfile does:

This Dockerfile builds CPU only docker images for inference purpose specifically for fastai course v3

Build command: `sudo docker image build -t fastai_v1:v3-cpu .`

I’m running this to spin up my container `sudo docker run -p 8889:8888/tcp -p 9999:9999 -v /home/chihchungwang/Documents/git:/home/user/git -v /home/chihchungwang/Documents/git/data:/home/user/git/data fastai_v1:v3-cpu`

- Note: simlink won't work in container, so you might need to attach multiple volumes to your container.

