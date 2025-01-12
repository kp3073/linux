#!/bin/bash

aws --version >/dev/null 2>&1
if [ $? -eq 0 ]; then
    aws ec2 describe-vpcs --query "Vpcs[].VpcId" --output text
else
    echo "vpc id not found"
fi
