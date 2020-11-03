FROM openjdk:8-jre-alpine
RUN mkdir /app
COPY /var/lib/jenkins/workspace/pipelinejob/target/studentapp-2.5-SNAPSHOT.war /app.war
CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=default", "/app.war"]
