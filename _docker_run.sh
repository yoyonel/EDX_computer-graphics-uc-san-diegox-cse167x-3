#!/usr/bin/env sh

# $1: entrypoint
# example: "/home/project/build.sh" (to build project)

# https://docs.google.com/document/d/1BQo5bfEE1fVybxcPevOggaKI5NRhzVNuaQIPWCTGaf0/edit#
# https://raw.githubusercontent.com/chipgarner/opencv3-webcam-docker/master/runme.sh

xhost +

# --user 1001 \

# https://github.com/moby/moby/issues/5539

nvidia-docker run \
	-it --rm \
	-e DISPLAY=$DISPLAY \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v "$(realpath .)":/home/project \
	--entrypoint $1 \
	$USER/hw0-linux_osx:latest

xhost -
