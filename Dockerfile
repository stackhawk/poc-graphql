FROM maven:3.6.3-jdk-8-slim

ENV SERVER_PORT=8080

COPY ./app /vuln-graphql

COPY ./docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

WORKDIR /vuln-graphql

RUN mvn package

ENTRYPOINT [ "docker-entrypoint.sh" ]
