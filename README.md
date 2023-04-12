# spring-boot-docker-hello-world
Demo project for creating Docker Image of Spring Boot application. \
More details: https://javabypatel.blogspot.com/2020/10/create-docker-image-of-spring-boot-microservice-using-fabric8-maven-plugin.html

For creating Docker Image, run below command,
1. mvn clean install
2. mvn fabric8:build
For fabric8 reference: https://fabric8.io/guide/mavenDockerBuild.html

To run the image in a Docker container,
1. Run the image using below command,\
$ docker run -p 8085:8085 spring-boot-docker-hello-world:0.0.1-SNAPSHOT.dev


If you are using Docker Toolbox, then execute below command,
1. $ docker-machine ip\
192.168.99.102  -> copy the ip

3. Go to your browser and hit 192.168.99.102:8085

If you are using Docker Desktop then,\
1 Go to your browser and hit localhost:8085
