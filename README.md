# dockerExam
## Exrcice 1
 docker build -t docker_exam . : pour construire l'image
 docker run --name docker_exam -p 3000:3000 docker_exam : pour lancer le conteneur
 ## Exercice 2
 docker network create exercice2
 docker run -e MYSQL_DATABASE=testdb -e MYSQL_ROOT_PASSWORD=root --network exercice2 -v D:\learn_docker\dockerExam\volume:/var/lib/mysql -p 3306:3306 --name mysql mysql:8.0.28
 docker run --network exercice2 -p 8080:2222 --name backend makouz/tuto_backend:1.0.0
 docker run --network exercice2 -p 80:8088 --name frontend makouz/tuto_front:1.0.0
 ## Exercice 3
 voir le fichier docker-compose.yml
 pour lancer les conteneurs on utilise la commande : docker-compose up