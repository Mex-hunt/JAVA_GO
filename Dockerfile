FROM openjdk:17-jdk-slim-buster

# LABEL
# MAINTAINER 
# RUN
# ARG
# ENV

COPY . .

WORKDIR /app
ADD tagert/hello-*jar /app/
EXPOSE 8080

CMD ["java" "-jar" "hello-*jar"]