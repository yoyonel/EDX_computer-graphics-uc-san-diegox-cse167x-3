#!/usr/bin/env bash

mkdir -p traces

apitrace trace \
	--output=traces/mytest3.trace \
	./run.sh 
	# ./run_glfw3_sample.sh 
