# Base Image
FROM amazoncorretto:17

# Set working directory
WORKDIR /app

# Copy Gradle Wrapper and project files
COPY ./ ./

# Ensure gradlew is executable
RUN chmod +x ./gradlew

# Build the application
RUN ./gradlew clean build

# Copy the built JAR file
COPY ./build/libs/*SNAPSHOT.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
