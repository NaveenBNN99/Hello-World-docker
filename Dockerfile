# Start with a base image containing Java 11
FROM openjdk:11-jre-slim

# Set the working directory to /app
WORKDIR /app

# Copy the POM file to the container
COPY pom.xml .

# Run Maven to download dependencies
RUN mvn dependency:go-offline -B

# Copy the rest of the application code to the container
COPY src ./src

# Build the application using Maven
RUN mvn package

# Expose port 8080 for the application
EXPOSE 8080

# Run the application when the container starts
CMD ["java", "-jar", "target/your-app.jar"]
