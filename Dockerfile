FROM node:21-alpine

COPY package.json .

WORKDIR /app

COPY src .

RUN npm install

EXPOSE 3000

CMD ["node", "server.js"]
