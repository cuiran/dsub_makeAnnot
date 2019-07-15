#!/bin/bash

dsub \
    --provider google-v2 \
    --project encode-uk-biobank \
    --zones "us-east1-b" \
    --disk-size 100 \
    --logging gs://ran/log/make-annot/Roadmap/ \
    --machine-type n1-highmem-8 \
    --image "gcr.io/encode-uk-biobank/make-annot" \
    --script "Roadmap_sum.py" \
    --tasks "submit_Roadmap_sum.tsv"
