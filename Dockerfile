FROM openjdk:11-jdk
VOLUME /tmp
ARG JAR_FILE=./build/libs/Gateway-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
EXPOSE 9000
ENTRYPOINT ["java","-jar","/app.jar"]
