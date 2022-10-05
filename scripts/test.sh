#!/bin/bash

cd tests/ && \
polyc Tests.sml -o ../runTests

echo "Running Test Suite"

cd ../ && \
./runTests
