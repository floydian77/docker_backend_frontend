FROM node

RUN npm install -g @vue/cli

COPY ssl/server.crt /usr/local/share/ca-certificates/
RUN update-ca-certificates --fresh

COPY scripts/init-vue.sh /usr/local/bin/
