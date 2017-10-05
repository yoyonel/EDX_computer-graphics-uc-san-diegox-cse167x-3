#!/usr/bin/env bash

mkdir -p traces

apitrace trace \
	--output=traces/mytest3.trace \
	./run.sh 
