#!/bin/sh

# docker run -it --net host --cpuset-cpus 0 --memory 512mb -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -v `pwd`/Downloads:/root/Downloads -v $HOME/.config/google-chrome/:/data google-chrome

# NETWORK_DEVICE="lo0"

# IP=$(ifconfig ${NETWORK_DEVICE} | grep inet | awk '$1=="inet" {print $2}')

IP=$(ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p')
# docker run -it --net host --cpuset-cpus 0 --memory 512mb -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -v `pwd`/Downloads:/home/chrome/Downloads --security-opt seccomp=`pwd`/chrome.json -v /dev/shm:/dev/shmi google-chrome
docker run -it --net host --cpuset-cpus 0 --memory 512mb -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=${IP}:0 -v `pwd`/Downloads:/home/chrome/Downloads --security-opt seccomp=`pwd`/chrome.json -v /dev/shm:/dev/shmi google-chrome
