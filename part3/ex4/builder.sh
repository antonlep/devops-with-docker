#!/bin/sh
git clone https://github.com/$1.git
cd $(ls -d */)
docker login -u $DOCKER_USER -p $DOCKER_PWD
docker build . -t $2
docker push $2