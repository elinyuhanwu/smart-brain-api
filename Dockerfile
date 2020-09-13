FROM node:14.9.0

RUN mkdir -p /usr/src/smart-brain-api
WORKDIR /usr/src/smart-brain-api

COPY package.json /usr/src/smart-brain-api
RUN npm install

COPY . /usr/src/smart-brain-api

ARG NODE_VERSION=14.9.0

ENV NODE_VERSION $NODE_VERSION
