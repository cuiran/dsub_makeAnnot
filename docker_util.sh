#!/bin/bash

docker build --no-cache -t make-annot .
docker tag make-annot gcr.io/encode-uk-biobank/make-annot:latest
docker push gcr.io/encode-uk-biobank/make-annot:latest
