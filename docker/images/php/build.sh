#!/bin/bash
docker build --squash --pull -f Dockerfile-5.6 -t local/php:5.6 .
docker build --squash --pull -f Dockerfile-7.0 -t local/php:7.0 .
docker build --squash --pull -f Dockerfile-7.1 -t local/php:7.1 .
docker build --squash --pull -f Dockerfile-7.2 -t local/php:7.2 .
docker build --squash --pull -f Dockerfile-7.3 -t local/php:7.3 .
