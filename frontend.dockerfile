FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    nodejs npm \
    ca-certificates \
    --no-install-recommends

RUN mkdir /.npm && chown ${DOCKER_USER_UID}:${DOCKER_USER_GID} /.npm
RUN mkdir /.config && chown ${DOCKER_USER_UID}:${DOCKER_USER_GID} /.config

COPY ssl/server.crt /usr/local/share/ca-certificates/
RUN update-ca-certificates --fresh
