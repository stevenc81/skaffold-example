FROM node:12.16.0-alpine3.10

USER node
RUN mkdir /home/node/app
WORKDIR /home/node/app

COPY package*.json ./
COPY src/ ./src/

RUN npm ci

EXPOSE 8080
ARG ENV=production
ENV NODE_ENV $ENV
CMD npm run $NODE_ENV
