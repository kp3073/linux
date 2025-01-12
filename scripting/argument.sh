#!/bin/bash

aws --version
if [ $? -eq 0 ]; then
    echo "AWS is installed"
else
    echo "AWS is not installed"
fi
