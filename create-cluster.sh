#!/bin/bash

gcloud beta container clusters create gvisior-playground --zone "us-central1-f" \
    --machine-type=n1-standard-1 --cluster-version=1.12.7-gke.17 --image-type "COS" \
    --enable-cloud-logging --enable-cloud-monitoring --enable-autoupgrade

gcloud beta container node-pools create gvisior-pool \
  --cluster=gvisior-playground \
  --zone "us-central1-f" \
  --image-type=cos_containerd \
  --sandbox type=gvisor \
  --enable-autoupgrade