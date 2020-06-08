FROM maven:3.6.3-jdk-8-slim

ARG server_port=8080
ENV SERVER_PORT=${server_port}

COPY ./app /vuln-graphql

COPY ./docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

WORKDIR /vuln-graphql

RUN mvn package

ENTRYPOINT [ "docker-entrypoint.sh" ]
