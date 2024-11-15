FROM amazoncorretto:17
CMD ["./mvnw", "clean", "package"]
COPY ./build/libs/*SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]