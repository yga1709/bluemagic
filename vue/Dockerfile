FROM node:15.11.0-alpine

WORKDIR /app

RUN apk update
RUN npm install -g http-server
RUN npm install -g @vue/cli

COPY . .

WORKDIR /app/bluemagic

COPY bluemagic/package*.json ./

RUN npm install
