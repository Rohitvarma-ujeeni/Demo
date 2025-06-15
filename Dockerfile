FROM tomcat:latest
COPY /home/slavenode1/workspace/SA-Devops1/target/app.war /usr/local/tomcat/webapps/app.war
EXPOSE 8080
CMD ["cataline.sh", "run"]
