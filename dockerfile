FROM openjdk:8-alpine
RUN yum -y update 
RUN yum -y add /bin/sh
RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app
COPY target/studentapp-2.5-SNAPSHOT.war $PROJECT_HOME/studentapp-2.5-SNAPSHOT.war
WORKDIR $PROJECT_HOME
CMD ["/bin/sh", "/start.sh"]
