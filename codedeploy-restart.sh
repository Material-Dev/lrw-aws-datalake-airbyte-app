#!/bin/bash
cd /home/ec2-user/airbyte
/usr/local/bin/docker-compose -f docker-compose.yaml stop

# Set basic auth from secrets manager
username=$(aws secretsmanager get-secret-value --region us-west-2 --query SecretString --output text --secret-id $AIRBYTE_ENVIRONMENT/airbyte-basic-auth | jq .username | tr -d '"')
password=$(aws secretsmanager get-secret-value --region us-west-2 --query SecretString --output text --secret-id $AIRBYTE_ENVIRONMENT/airbyte-basic-auth | jq .password | tr -d '"')

sed -i "s/BASIC_AUTH_USERNAME=.*/BASIC_AUTH_USERNAME=$username/g" .env
sed -i "s/BASIC_AUTH_PASSWORD=.*/BASIC_AUTH_PASSWORD=$password/g" .env

/usr/local/bin/docker-compose -f docker-compose.yaml up -d

# Authenticate with ECR
aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin $REPOSITORY_URI
