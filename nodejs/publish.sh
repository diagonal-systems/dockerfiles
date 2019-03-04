#!/bin/bash

tag="diagonal/nodejs"

docker build --tag "$tag" .

docker push "$tag"
