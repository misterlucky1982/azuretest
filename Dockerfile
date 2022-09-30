FROM docker.io/openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["sh", "-c", "java ${JAVA_OPTS} -jar /app.jar"]
#EXPOSE 80

#FROM openjdk:8-jdk-alpine
#MAINTAINER baeldung.com
#COPY target/example-0.0.1.jar example-0.0.1.jar
#ENTRYPOINT ["java","-jar","/example-0.0.1.jar"]