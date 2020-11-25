FROM openjdk:8

WORKDIR /myapp
COPY ./spring-example-project-master /myapp
RUN ./mvnw package
EXPOSE 8080
CMD java -jar ./target/docker-example-1.1.3.jar
