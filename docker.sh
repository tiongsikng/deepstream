#!/bin/bash
docker volume ls -q -f driver=nvidia-docker | xargs -r -I{} -n1 docker ps -q -a -f volume={} | xargs -r docker rm -f
sudo apt-get purge -y nvidia-docker

curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | \
  sudo apt-key add -
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | \
  sudo tee /etc/apt/sources.list.d/nvidia-docker.list
sudo apt-get update

sudo apt-get install -y nvidia-docker2
sudo pkill -SIGHUP dockerd

# docker pull nvcr.io/nvidia/deepstream:3.0-18.11
xhost +

sudo docker run --runtime=nvidia -it \
-e DISPLAY=$DISPLAY \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-v /home/rnd:/home \
-v /media/videoDB:/media/videoDB \
-v /media/imageDB:/media/imageDB \
-v /media/misc:/media/misc \
--name deepstream-docker \
nvcr.io/nvidia/deepstream:3.0-18.11 /bin/bash\