FROM python:2-alpine

RUN pip install https://s3.amazonaws.com/cloudformation-examples/aws-cfn-bootstrap-latest.tar.gz

ENTRYPOINT ["/usr/local/bin/cfn-signal"]
