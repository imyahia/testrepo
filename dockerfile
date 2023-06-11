FROM maven:3.8.2-jdk-8
WORKDIR /spring-app
RUN ls -alh
COPY . .  
RUN ls -alh
RUN pwd 
RUN mvn clean install -Dmaven.test.skip=true

