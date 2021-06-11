FROM openjdk:8
RUN yum update -y && yum install maven -y
EXPOSE 8080
COPY target/docker-jenkins-integration-sample.jar docker-jenkins-integration-sample.jar
ENTRYPOINT ["java","-jar","/docker-jenkins-integration-sample.jar"]
