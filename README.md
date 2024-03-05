# dockerExam


git clone  https://github.com/MokhtarOuarouss/dockerExam.git

docker build -t dockerexam .

docker run --name c_docker_exam -p 3000:3000 -d dockerexam


# exercice 2 :


docker pull makouz/tuto_backend:1.0.0
docker pull makouz/tuto_front:1.0.0
docker pull mysql:8.0.28

docker network create netw


docker run --name mysql-container --network netw -e MYSQL_DATABASE=testdb -v /home/oussen/Public/mysql-data:/var/lib/mysql -d mysql:8.0.28


docker run --name backend-container --network netw -p 2222:8088 -d makouz/tuto_backend:1.0.0


docker run --name front-container --network netw -p 8088:80 -d makouz/tuto_front:1.0.0

# exercice 3 :

docker-compose u -d
