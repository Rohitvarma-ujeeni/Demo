FROM tomcat:latest
RUN rm -rf /usr/local/tomcat/webapps/*
COPY /home/slavenode1/workspace/SA-Devops1/target/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["cataline.sh", "run"]
