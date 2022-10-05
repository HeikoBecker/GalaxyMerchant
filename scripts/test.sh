#!/bin/bash

cd tests/ && \
polyc Tests.sml -o ../runTests

echo "Running Test Suite"

cd ../ && \
./runTests

if [ $? = 1 ];
then echo "Tests failed"
else echo "Tests successfull"
fi
