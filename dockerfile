FROM maven:3.8.2-jdk-8
WORKDIR /spring-app
RUN ls -alh


ADD  ./testrepo/tpAchatProject*.jar tpAchatProject-1.0.jar 

RUN ls -alh
ENTRYPOINT ["java","-jar","tpAchatProject-1.0.jar"]
COPY ./testrepo/* .  


