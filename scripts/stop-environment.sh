#!/bin/sh

set -eou pipefail

# This script is used to start the environment for the project.

DEPLOYMENT_DIR="$(realpath)/deployments"

COMPOSE_FILE="${DEPLOYMENT_DIR}/compose.yaml"

if [ -z "docker" ]; then
  echo "Docker is not installed. Please install Docker to run this script."
  exit 1
fi

if [ ! -f "$COMPOSE_FILE" ]; then
  echo "Docker Compose file '$COMPOSE_FILE' not found in the current directory."
  exit 1
fi

docker compose -f "$COMPOSE_FILE" down

echo "Environment stopped successfully using Docker Compose file: $COMPOSE_FILE"