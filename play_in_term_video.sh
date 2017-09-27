#!/usr/bin/env bash

# Usages:
# ./play_in_term_video.sh records/mytest3.mp4

# URLS:
# - https://www.ffmpeg.org/ffmpeg-devices.html#caca
# - http://caca.zoy.org/wiki
# - http://archive.oreilly.com/pub/h/4441
ffmpeg \
	-i $1 \
	-vcodec rawvideo \
	-pix_fmt rgb24 \
	-window_size 200x60 \
	-f caca -
