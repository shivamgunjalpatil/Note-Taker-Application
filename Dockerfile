# Use an OpenJDK base image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the generated JAR file into the container
COPY target/NoteTaker-0.0.1-SNAPSHOT.jar app.jar

# Expose port 8080 (Adjust if needed)
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"]
