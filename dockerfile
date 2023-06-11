FROM maven:3.8.2-jdk-8
WORKDIR /spring-app
RUN ls -alh
COPY ./testrepo/pom.xml ./
RUN ls -alh

COPY ./testrepo/* .  

RUN mvn clean install  spring-boot:repackage -Dmaven.test.skip=true

