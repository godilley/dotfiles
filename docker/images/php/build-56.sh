#!/bin/bash
docker build --squash --pull -f Dockerfile-5.6 -t local/php:5.6 .
