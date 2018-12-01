FROM ubuntu:18.04

ARG DOCKER_USER_UID
ARG DOCKER_USER_GID

RUN apt-get update && apt-get install -y \
    git \
    curl \
    gnupg \
    ca-certificates \
    --no-install-recommends

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - \
    && apt-get install -y nodejs

RUN mkdir /.npm && chown $DOCKER_USER_UID:$DOCKER_USER_GID /.npm
RUN mkdir /.vue-templates && chown $DOCKER_USER_UID:$DOCKER_USER_GID /.vue-templates
RUN mkdir /.config && chown $DOCKER_USER_UID:$DOCKER_USER_GID /.config

RUN npm install -g @vue/cli
RUN npm install -g @vue/cli-init

COPY ssl/server.crt /usr/local/share/ca-certificates/
RUN update-ca-certificates --fresh
