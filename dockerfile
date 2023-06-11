FROM maven:3.8.8-openjdk-10-slim
WORKDIR /spring-app

COPY . .  
RUN mvn clean install -Dmaven.test.skip=true

