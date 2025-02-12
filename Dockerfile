FROM eclipse-temurin:21.0.6_7-jre-ubi9-minimal

EXPOSE 8080

WORKDIR /app

COPY target/simple-api-0.0.1-SNAPSHOT.jar app.jar

CMD ["java", "-jar", "app.jar"]