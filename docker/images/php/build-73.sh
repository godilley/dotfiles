#!/bin/bash
docker build --squash --pull -f Dockerfile-7.3 -t local/php:7.3 .
