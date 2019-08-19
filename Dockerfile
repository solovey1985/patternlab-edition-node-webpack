FROM node:11-alpine

RUN ls

RUN mkdir /app

COPY . ./app

WORKDIR /app

RUN ls

RUN npm install

RUN npm rebuild node-sass

RUN npm run patternlab:build

CMD node server.js

EXPOSE 80