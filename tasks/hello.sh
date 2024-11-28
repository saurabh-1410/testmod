#!/bin/bash

# Exit immediately if any command fails
set -e

echo "hello" >> /tmp/outputfile

# Sleep for 5 minutes (300 seconds)
sleep 300

echo "goodbye" >> /tmp/outputfile

