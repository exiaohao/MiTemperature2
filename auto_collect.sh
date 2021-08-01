#!/bin/bash

# RESULT=$(./LYWSD03MMC.py --device A4:C1:38:94:9F:DE --influxraw 1 --count 1)
RESULT="env_temp_humidity,sensor=A4:C1:38:94:9F:DE value=26.63 69"
curl -i -XPOST 'http://localhost:8086/write?db=collector' --data-binary $RESULT
