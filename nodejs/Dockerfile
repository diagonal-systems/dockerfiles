FROM node:carbon-alpine as base

COPY scripts/install-chamber.sh /tmp/install-chamber.sh

RUN apk --no-cache add curl && \
  sh /tmp/install-chamber.sh && \
  npm install -g nodemon

USER node
RUN mkdir -p /home/node/app
WORKDIR /home/node/app
