#!/usr/bin/env bash

[[ -v VULN_GRAPHQL_PORT ]] && SERVER_PORT=${VULN_GRAPHQL_PORT} || read -e -i 8080 -p "Server listening port: " SERVER_PORT

docker-compose up || echo "Make sure to install docker-compose..."
