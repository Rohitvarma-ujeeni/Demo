FROM tomcat:latest
RUN rm -rf /usr/local/tomcat/webapps/*
COPY /home/slavenode1/workspace/Java Maven Web Application/target/demo-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["cataline.sh", "run"]
