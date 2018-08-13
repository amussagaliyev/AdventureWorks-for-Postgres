#com.mycompany.docker.db
Forked from lorint/AdventureWorks-for-Postgres
https://github.com/lorint/AdventureWorks-for-Postgres.git

Available as Docker image "a142857/mycompany.db" on https://hub.docker.com

To build and run

1. docker build -t mycompany.db .
2. docker run -d -p 5432:5432 --name mycompany.db mycompany.db

To build and push

1. docker build -t mycompany.db .
2. docker tag mycompany.db a142857/mycompany.db
3. docker push a142857/mycompany.db

"--name mycompany.db" is used as a host name within mycompany.tomcat base container for data sourse connection
