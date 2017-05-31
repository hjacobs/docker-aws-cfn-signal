# docker-aws-cfn-signal

Provides the CloudFormation helper script `cfn-signal` to signal CF resources.

Example usage to send a SUCCESS signal for the `mystack-1` CF stack (`WorkerAutoScaling` resource):

    docker run registry.opensource.zalan.do/teapot/cfn-signal:1.4-4 mystack-1 WorkerAutoScaling 0

# Credits

Shamelessly stolen from https://github.com/asynchrony/docker-aws
