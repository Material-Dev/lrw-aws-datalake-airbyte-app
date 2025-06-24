#!/bin/bash
set -e

echo "Updating system and installing dependencies..."
if [ -f /etc/debian_version ]; then
  sudo apt update -y && sudo apt install -y docker.io curl unzip jq git
elif [ -f /etc/redhat-release ]; then
  sudo yum update -y && sudo yum install -y docker curl unzip jq git
fi

echo "Starting Docker..."
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER

echo "Installing abctl..."
curl -LsfS https://get.airbyte.com | bash -

echo "Deploying Airbyte via abctl..."
abctl local install --host "$AIRBYTE_HOST" --port "$AIRBYTE_PORT" --insecure-cookies

echo "Airbyte deployment complete."
