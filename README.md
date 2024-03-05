# dockerExam

# exercice 1: 
# Question 3: docker build -t examimage .
# Question 4: docker run -d --rm --name examcontainer -p 3000:3000 examimage


# exercice 2: 

# Question 1: docker network create app_network
# docker run -d --name mysql -e MYSQL_DATABASE=testdb -v C:\Users\user\Desktop\docker-test:/var/lib/mysql --network app_network mysql:8.0.28
# docker run -d --name backend_container --link mysql:mysql -p 8080:2222 --network app_network makouz/tuto_backend:1.0.0
# docker run -d --name frontend_container -p 8088:80 --network app_network makouz/tuto_front:1.0.0

# Exercice 3:


