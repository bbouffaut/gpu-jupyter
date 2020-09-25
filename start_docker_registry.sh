#!/bin/sh
docker run -d -it -p 8888:8888 -v $(pwd)/data:/home/jovyan/work -e GRANT_SUDO=yes -e JUPYTER_ENABLE_LAB=yes -e NVIDIA_VISIBLE_DEVICES=0 --user root --restart on-failure --name gpu-jupyter registry.bb
ofamily.com/gpu-jupyter_cuda9.0:latest
