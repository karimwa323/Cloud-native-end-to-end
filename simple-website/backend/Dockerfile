FROM node:20-alpine

#upgrade the libs
RUN apk update && apk upgrade --no-cache\
    RUN apk add --no-cache "zlib>=1.3.2-r0" "openssl>=3.3.6-r0"

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --production && npm audit fix --force

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]