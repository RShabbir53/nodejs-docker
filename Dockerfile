FROM node:19-alpine

COPY package.json /app/

WORKDIR /app

RUN npm install

COPY src /app/

CMD ["node", "server.js"]

