#!/bin/bash

set -e

echo "Job started: $(date)"

/usr/local/bin/s3cmd sync $PARAMS "$DATA_PATH" "$S3_PATH"

rm "$DATA_PATH"/*

echo "Job finished: $(date)"
