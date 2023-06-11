FROM openjdk:8-jdk-alpine
WORKDIR /spring-app

COPY . .  
RUN mvn clean install -Dmaven.test.skip=true

