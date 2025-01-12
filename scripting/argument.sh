#!/bin/bash
REGIONS=$@
aws --version >/dev/null 2>&1
if [ $? -eq 0 ]; then
    for REGION in REGIONS; do
        aws ec2 describe-vpcs --region $REGION --query 'Vpcs[*].VpcId' --output text
    done
else
    echo "vpc id not found"
fi
