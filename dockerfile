
RUN mkdir -p /opt/app
RUN mkdir /app
COPY studentapp-2.5-SNAPSHOT.war /app.war
CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=default", "/app.war"]
