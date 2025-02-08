# JDK
FROM openjdk:17-jdk-slim-buster

# Just to Document the port app use (it do not expose this port)
EXPOSE 8080

# Adding generated jar to container
ADD /target/car-service-0.0.1-SNAPSHOT.jar car-service.jar

# Inital command
ENTRYPOINT ["java", "-Dspring.profiles.active=prod", "-jar", "car-service.jar"]