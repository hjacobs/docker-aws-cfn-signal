# docker-aws-cfn-signal

Provides the CloudFormation helper script `cfn-signal` from the [aws-cfn-bootstrap package](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-helper-scripts-reference.html) to signal CF resources.

Example usage to send a SUCCESS signal for the `mystack-1` CF stack (`WorkerAutoScaling` resource):

    docker run registry.opensource.zalan.do/teapot/cfn-signal:1.4-4 mystack-1 WorkerAutoScaling 0

# Credits

Shamelessly stolen from https://github.com/asynchrony/docker-aws
