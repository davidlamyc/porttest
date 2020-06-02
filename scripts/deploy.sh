#!/usr/bin/env bash

# install Amazon CLI
apt-get update && apt-get install -y python-dev
curl -O https://bootstrap.pypa.io/get-pip.py
python get-pip.py
pip install awscli
aws s3 sync dist/ $S3_BUCKET_PATH --acl public-read --delete --debug


[ ! -z "$AWS_CF_DIST_ID" ] && aws configure set preview.cloudfront true && aws cloudfront create-invalidation --distribution-id $AWS_CF_DIST_ID --paths '/*'