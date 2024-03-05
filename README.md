# dockerExam
Exercice 1:
 1 - FROM node

WORKDIR /app

COPY . /app

RUN  npm install

CMD [ "node","server.js"]
2- docker build -t server:v1 .
3- docker run --rm -d --name server -p 3000:3000 server:v1

Exercice 2:
- docker network create network1 
- docker run -e MYSQL_DATABASE=testdb --network network1  -p 3306:3306 --name mysql -d mysql:latest
- docker run --rm --name serverBackend  --network network1 -d -p 8080:2222 makouz/tuto_backend:1.0.0
- docker run --rm --name serverFrontend  --network network1 -d -p 8088:80 makouz/tuto_front:1.0.0
// stop container of mysql and binding it to a volume
- docker run -e MYSQL_DATABASE=testdb --network network1 -v ${PWD}/mysql_data:/var/lib/mysql -p 3306:3306 --name mysql -d mysql:latest
