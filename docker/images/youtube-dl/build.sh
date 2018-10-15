#!/bin/bash

docker build --squash --pull --no-cache -t local/youtube-dl:latest .
