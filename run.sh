#!/bin/bash 

#build image
tag="2.2.2"
project="harbor.demo.io/kubernetes/kubernetes-kafka"

docker build -t $project:$tag .

if [ $? -eq 0 ];then
docker push $project:$tag
fi
