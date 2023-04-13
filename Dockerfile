# Use a JDK image as the base image
FROM adoptopenjdk:11-jre-hotspot

# Set the working directory to /app
WORKDIR /app

# Copy the compiled JAR file to the container
COPY target/*.jar app.jar

# Expose port 8080 for the container to listen on
EXPOSE 8080

# Set the command to run the application when the container starts
CMD ["java", "-jar", "app.jar"]
