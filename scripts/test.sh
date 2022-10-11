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

echo "Running example file"
./scripts/build.sh

./galaxyMerchant < testcases/example1.txt > /tmp/out1.txt
diff -q /tmp/out1.txt testcases/example1_output.txt

if [ $? = 1 ];
then echo "Example script failed"
else echo "Example script succeeded"
fi
