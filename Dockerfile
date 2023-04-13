FROM adoptopenjdk/openjdk11-openj9:alpine
# Copy the JAR file from the host to the image
ADD target/${project.build.finalName}.jar /myapp/${project.build.finalName}.jar
EXPOSE 8080
# Run the JAR file
CMD ["java", "-jar", "/myapp/${project.build.finalName}.jar"]
