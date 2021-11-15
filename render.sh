#!/bin/bash

imageName="openjdk:15-alpine"
serviceName="service-java"

render() {
sedStr="
  s!%%IMAGE_NAME%%!$imageName!g;
  s!%%SERVICE_NAME%%!$serviceName!g;
"

sed -r "$sedStr" $1
}

render Dockerfile.template > Dockerfile
