FROM node:21-alpine
WORKDIR ./app
COPY *.json .
RUN npm install
COPY ./src/ .
CMD ["node", "server.js"]
