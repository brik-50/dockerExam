# dockerExam
# exo 1
# creation de image 
docker build -t image1 .
# run de l'image
docker run -d -p 4000:3000 --name container1 image1 

# exo 2
# 
docker network create mon_reseau
docker run -d --name mysql -e MYSQL_DATABASE=testdb -v C:\Users\omare\Desktop:/var/lib/mysql --network mon_reseau mysql:8.0.28
docker run -d --name back_end_container --link mysql:mysql -p 8080:2222 --network mon_reseau makouz/tuto_backend:1.0.0
docker run -d --name front_end_container -p 8088:80 --network mon_reseau makouz/tuto_front:1.0.0
