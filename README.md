# dockerExam
# +++++++++++++++++++++++++++++++++++++++ exercice 1 +++++++++++++++++++++++++++++++++++++++
# docker build -t my-docker-exam-app . create image
# docker run -p 3005:3000 my-docker-exam-app
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++





# +++++++++++++++++++++++++++++++++++++++ exercice 2 +++++++++++++++++++++++++++++++++++++++
# ------------------------réseau----------------------------------------
# Créer un réseau Docker :
# docker network create my_network


# ------------------------MySQL----------------------------------------
# Lancer le conteneur MySQL 
# docker run -d --name mysql --network my_network -e MYSQL_ROOT_PASSWORD=0000 -e MYSQL_DATABASE=testdb -v mysql_data:/var/lib/mysql mysql:8.0.28
# ------------------------Explaine----------------------------------------
# --name mysql : Spécifie le nom du conteneur comme étant "mysql"
# --network my_network : Connecte le conteneur au réseau Docker nommé "my_network" 
# -e MYSQL_ROOT_PASSWORD=0000 : Définit le mot de passe root MySQL comme étant "0000".
# -e MYSQL_DATABASE=testdb : Crée une base de données nommée "testdb" lors du démarrage du conteneur.


# ------------------------backend----------------------------------------
# Lancer le serveur backend :
# docker pull makouz/tuto_backend:1.0.0
# docker run -d --name backend --network my_network -p 2222:8080 makouz/tuto_backend:1.0.0
# ------------------------Explaine----------------------------------------
# -d : lance le conteneur en arrière-plan (mode détaché).
# --name backend : spécifie le nom du conteneur comme "backend".
# --network my_network : connecte le conteneur au réseau Docker nommé "my_network" créé précédemment.
# -p 2222:8080 : mappe le port 8080 du conteneur au port 2222 de la machine hôte.


# ------------------------frontend----------------------------------------
# Lancer le serveur frontend :
# docker pull makouz/tuto_front:1.0.0
# docker run -d --name frontend --network my_network -p 8088:80 makouz/tuto_front:1.0.0
# ------------------------Explaine----------------------------------------
# -d : Cette option lance le conteneur en arrière-plan, en mode détaché.
# --name frontend : Spécifie le nom du conteneur comme étant "frontend".
# --network my_network : Connecte le conteneur au réseau Docker nommé "my_network" qui a été créé précédemment.
# -p 8088:80` : Mappe le port 80 du conteneur frontend sur le port 8088 de la machine hôte. Cela permet d'accéder au serveur frontend depuis le port 8088 de la machine hôte.



# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

# test
# http://localhost:8088/tutorials




# +++++++++++++++++++++++++++++++++++++++ exercice 3 +++++++++++++++++++++++++++++++++++++++
# docker-compose up -d
# ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
