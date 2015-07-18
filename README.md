## Ubuntu VNC Server Dockerfile


This repository contains **Dockerfile** of [Ubuntu with VNC Server]


### Base Docker Image

[ubuntu:14.04](https://registry.hub.docker.com/_/ubuntu/)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Build an image from Dockerfile: 

    `docker build --rm --no-cache icqparty/vncserver github.com/icqparty/vncserver`


### Usage interativ

    docker run  -it --rm -p 5901:5901 icqparty/vncserver
    
### Usage deamon   

    docker run  -d -p 5901:5901 icqparty/vncserver


Connect to: `vnc://localhost:5901` via VNC client.

    vncviewer 127.0.0.1:5901
