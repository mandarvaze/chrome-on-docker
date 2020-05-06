#!/bin/sh

# IP=$(ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p')
# /opt/X11/bin/xhost + ${IP}
docker run -it --net host --cpuset-cpus 0 --memory 512mb -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=${IP}:0 -v `pwd`/Downloads:/home/chrome/Downloads --security-opt seccomp=`pwd`/chrome.json -v /dev/shm:/dev/shmi google-chrome

