FROM openjdk:8

WORKDIR /myapp
COPY . /myapp
RUN ./mvnw package
EXPOSE 8080
CMD java -jar ./target/docker-example-1.1.3.jar --server.port=$PORT
