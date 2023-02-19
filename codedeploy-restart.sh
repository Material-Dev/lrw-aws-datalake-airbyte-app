#!/bin/bash
cd /home/ec2-user/airbyte
/usr/local/bin/docker-compose -f docker-compose.yaml down
/usr/local/bin/docker-compose -f docker-compose.yaml up -d
