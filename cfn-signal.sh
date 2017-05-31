#!/bin/sh

cfn_stack=$1
cfn_resource=$2
result=$3

EC2_AVAIL_ZONE=$( wget -q -O - http://169.254.169.254/latest/meta-data/placement/availability-zone )
EC2_REGION="`echo \"$EC2_AVAIL_ZONE\" | sed -e 's:\([0-9][0-9]*\)[a-z]*\$:\\1:'`"

echo "INFO: Notifying CloudFormation (region: $EC2_REGION, stack: $cfn_stack, resource: $cfn_resource, status: $result)..."

cfn-signal -e $result --stack $cfn_stack --resource $cfn_resource --region $EC2_REGION

