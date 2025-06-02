FROM openjdk:17-jdk-slim-buster

# LABEL
# MAINTAINER 
# RUN
# ARG
# ENV

COPY . .

WORKDIR /opt
ADD target/hello-world-app-1.0-SNAPSHOT.jar /opt/
EXPOSE 8080

CMD ["java", "-jar", "hello-world-app-1.0-SNAPSHOT.jar"]