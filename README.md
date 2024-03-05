# dockerExam
                       
##Exercice 1##

1.
J'ai créer un Docker file et insérer les instruction pour builder l'image.
<-- FROM node:10-alpine
    WORKDIR /app
    COPY  *.json .

    RUN npm install

    COPY  ./src .
    EXPOSE 3000
    CMD [ "node","server.js" ]
-->

2.
La commande suivante pour build l'image:
--> docker build -t backend .  
3.
Lancer le container avec la commande :
--> docker run -d -p 3000:3000 --name myApp node 
-d pour qu'il se lance dans le daemon 
-p pour mapper le port 
-- name myApppour spécifier le nom du container 

##Exercice 2##

1. 
créer un réseau Docker avec la commande:
    --> docker network create new_network
Démarrer le conteneur MySQL et le connecter au réseau :
    --> docker run -d --name conteneur_mysql --network new_network mysql:8.0.28
Cette commande lancera le conteneur MySQL dans le daemon, le nommera conteneur_mysql et le connectera au réseau new_network.
Démarrer le conteneur du serveur backend et le connecter au même réseau :
    --> docker run -d --name conteneur_backend --network new_network makouz/tuto_backend:1.0.0
Démarrer le conteneur du serveur frontend et le connecter au même réseau :
    --> docker run -d --name conteneur_frontend --network new_network makouz/tuto_front:1.0.0
2.
  --> docker run -d --name conteneur_mysql --network new_network -e MYSQL_DATABASE=testdb mysql:8.0.28
3.
  --> docker run -d --name mysql --network new_network -e MYSQL_DATABASE=testdb mysql:8.0.28
4.
  --> docker run -d --name conteneur_backend --network new_network -p 8080:2222 makouz/tuto_backend:1.00
5.
  --> docker run -d --name mysql --network new_network -e MYSQL_DATABASE=testdb -v C:/Users/home/mysql_data:/var/lib/mysql mysql:8.0.28
6.
  --> docker run -d --name conteneur_frontend --network new_network -p 80:8088 makouz/tuto_front:1.0.0

##Exercice 3:##

services:
  mysql:
    image: mysql:8.0.28
    container_name: mysql
    environment:
      - MYSQL_ROOT_PASSWORD=root
      - MYSQL_DATABASE=testdb
    networks:
      - new_network
    ports:
      - "3306:3306"
    volumes:
      - myvolumes:/var/lib/mysql
  backend:
    image: makouz/tuto_backend:1.0.0
    container_name: conteneur_backend
    ports:
      - "8080:2222"
   networks:
      - new_network
    depends_on:
      - mysql
  frontend:
    image: makouz/tuto_front:1.0.0
    container_name: conteneur_frontend
    ports:
      - "80:8088"
    networks:
      - new_network
    depends_on:
      - conteneur_backend

networks:
  new_network:
   driver: Bridge
volumes: myvolumes
----->
  
exécutez la commande :
docker-compose up -d  pour démarrer tous les services.
