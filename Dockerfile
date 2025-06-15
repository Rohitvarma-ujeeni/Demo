FROM tomcat:latest
RUN rm -rf /usr/local/tomcat/webapps/*
EXPOSE 8080
