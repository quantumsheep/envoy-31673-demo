#!/bin/bash

set -ex

echo "GET http://localhost:8080/" | vegeta attack --workers=1 --max-connections=1 -rate=30000 -duration=50s -http2 -h2c > /dev/null
