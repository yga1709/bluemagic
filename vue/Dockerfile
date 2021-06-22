FROM node:15.11.0-alpine

WORKDIR /app

RUN apk update 
RUN npm install -g http-server

COPY package*.json ./
COPY . .

RUN npm install