WORKDIR /spring-app
COPY . .
RUN mvn clean install -Dmaven.test.skip=true

CMD mvn spring-boot:run
