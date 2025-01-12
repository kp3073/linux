!#/bin/bash

awd --version 2>/dev/null
if [ $? -eq 0 ]; then
    echo "AWD is installed"
else
    echo "AWD is not installed"
fi
