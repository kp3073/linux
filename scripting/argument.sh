#!/bin/bash
if [ $# -gt 0 ]; then
    aws --version >/dev/null 2>&1
    if [ $? -eq 0 ]; then
        REGIONS=$@
        for REGION in ${REGIONS}; do
            aws ec2 describe-vpcs --region ${REGION} --query 'Vpcs[*].VpcId' --output text
            echo "-----------------------"
        done
    else
        echo "vpc id not found"
    fi
else
    echo "Please provide region name"
fi
