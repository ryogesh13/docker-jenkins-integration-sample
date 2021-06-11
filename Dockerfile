FROM openjdk:8
RUN apt-get update -y && apt-get install maven -y
EXPOSE 8080
COPY target/docker-jenkins-integration-sample.jar docker-jenkins-integration-sample.jar
ENTRYPOINT ["java","-jar","/docker-jenkins-integration-sample.jar"]
