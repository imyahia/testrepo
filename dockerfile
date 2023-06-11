FROM maven:3.8.2-jdk-8
WORKDIR /spring-app
RUN ls -alh

ADD  ./testrepo/pom.xml ./

ADD  ./testrepo/tpAchatProject*.jar tpAchatProject-1.0.jar 

RUN ls -alh

RUN mvn clean install  spring-boot:repackage -Dmaven.test.skip=true
COPY ./testrepo/* .  


