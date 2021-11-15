#!/bin/bash

imageName="openjdk:15-slim"
serviceName="service-java"

render() {
sedStr="
  s!%%BASE_IMAGE_NAME%%!$imageName!g;
"

sed -r "$sedStr" $1
}

render Dockerfile.template > Dockerfile
