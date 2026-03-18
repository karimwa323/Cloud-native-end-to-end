FROM node:18-alpine

RUN apk update && apk upgrade --no-cache

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --production

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]