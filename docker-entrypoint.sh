#!/bin/bash

sed -i'' -e "s/%SERVER_PORT%/${SERVER_PORT}/g" /vuln-graphql/src/main/resources/application.properties

mvn spring-boot:run

