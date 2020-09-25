#!/bin/sh
docker run -d -it -p 8888:8888 -v /srv/1-workspace/notebooks:/home/jovyan/work -e GRANT_SUDO=yes -e JUPYTER_ENABLE_LAB=yes -e NVIDIA_VISIBLE_DEVICES=0 --user root --restart unless-stopped --name gpu-jupyter registry.bbofamily.com/gpu-jupyter_cuda9.0:1.1
