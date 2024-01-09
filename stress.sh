#!/bin/bash

set -ex

echo "GET http://localhost:8080/" | vegeta attack -max-connections=1 -workers=50 -rate=30000 -duration=50000ms -http2 -h2c | vegeta encode
