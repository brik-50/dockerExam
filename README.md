# dockerExam
# exo 1
# creation de image 
docker build -t image1 .
# run de l'image
docker run -d -p 4000:3000 --name container1 image1 

# exo 2
# Q1
docker network create mon_reseau
docker run -d --name mysql -e MYSQL_DATABASE=testdb -v C:\Users\omare\Desktop:/var/lib/mysql --network mon-reseau mysql:8.0.28
docker run -d --name back_end_container --link mysql:mysql -p 8080:2222 --network mon-reseau makouz/tuto_backend:1.0.0
docker run -d --name front_end_container -p 8088:80 --network mon-reseau makouz/tuto_front:1.0.0

# Question 1: docker network create app_network
# docker run -d --name mysql -e MYSQL_DATABASE=testdb -v C:\Users\user\Desktop\docker-test --network app_network mysql:8.0.28
# docker run -d --name backend_container --link mysql:mysql -p 8080:2222 --network app_network makouz/tuto_backend:1.0.0
# docker run -d --name frontend_container -p 8088:80 --network app_network makouz/tuto_front:1.0.0