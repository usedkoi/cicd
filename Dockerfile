FROM amazoncorretto:17
RUN ["./gradlew", "clean", "build"]
CMD ["./mvnw", "clean", "package"]
COPY ./build/libs/*SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]