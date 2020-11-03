FROM openjdk:8-jre-alpine
RUN mkdir /app
COPY target/studentapp-2.5-SNAPSHOT.war /app.war
CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=default", "/app.war"]
