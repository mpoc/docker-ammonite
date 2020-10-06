FROM openjdk:16-alpine

ENV SCALA_VERSION 2.13
ENV AMM_VERSION 2.2.0
ENV AMM_FILE $SCALA_VERSION-$AMM_VERSION
ENV AMM_URL https://github.com/lihaoyi/Ammonite/releases/download/$AMM_VERSION/$AMM_FILE

RUN (echo "#!/usr/bin/env sh" && curl -L "$AMM_URL") > /usr/local/bin/amm && chmod +x /usr/local/bin/amm

ENTRYPOINT amm
