FROM openjdk:17-alpine
COPY .mvn .mvn
COPY pom.xml \
     mvnw \
     ./
COPY . ./
RUN ./mvnw package
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "target/simple-api-1-exec.jar"]
