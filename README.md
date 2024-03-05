# dockerExam

## Exercice 1
```
docker build -t dockerexam .
```

```
docker run -d -p 3000:3000 dockerexam
```

## Exercice 2

### Partie 1
```
docker network create exam
```

Mysql v
``` v
docker pull mysql:8.0.28
docker run --name mysql -d -e MYSQL_DATABASE=testdb -e MYSQL_ALLOW_EMPTY_PASSWORD=true --network exam -v C:\Users\Abd-AB\Desktop\Norsys\docker\dockerExam\sql:/var/lib/mysql mysql:8.0.28
```

Backend
```
docker pull makouz/tuto_backend:1.0.0
docker run -d -p 8080:2222 --network exam makouz/tuto_backend:1.0.0
```

Front
```
docker pull makouz/tuto_front:1.0.0
docker run -d -p 8088:80 --network exam makouz/tuto_front:1.0.0
```


