FROM python:3-alpine

RUN pip install awscli \
 && pip install https://s3.amazonaws.com/cloudformation-examples/aws-cfn-bootstrap-latest.tar.gz
