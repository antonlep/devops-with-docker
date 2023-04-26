#!/bin/sh
git clone git@github.com:$1.git
cd $(ls -d */)
docker build . -t $2
docker push $2