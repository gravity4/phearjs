#!/usr/bin/env bash -x

gcloud docker --authorize-only \
    && docker build -t us.gcr.io/trim-1349/docker-phantomjs:latest . \
    && gcloud docker -- push us.gcr.io/trim-1349/docker-phantomjs:latest
