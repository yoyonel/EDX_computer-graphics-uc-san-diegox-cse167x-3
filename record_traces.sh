#!/usr/bin/env bash

mkdir -p records

# https://stackoverflow.com/questions/965053/extract-filename-and-extension-in-bash

# http://blog.scene.ro/posts/capturing-opengl-video-on-linux/
apitrace dump-images -o - $1 | \
ffmpeg \
	-y \
	-r 60 \
	-f image2pipe \
	-vcodec ppm \
	-i pipe: \
	-c:v libx264 -preset slow -b:v 8000k \
	-pass 1 \
	-f mp4 /dev/null && \
apitrace dump-images -o - $1 | \
ffmpeg \
	-y \
	-r 60 \
	-f image2pipe \
	-vcodec ppm \
	-i pipe: \
	-c:v libx264 -preset slow -b:v 8000k \
	-pass 2 \
	-f mp4 records/$(basename $1 .trace).mp4