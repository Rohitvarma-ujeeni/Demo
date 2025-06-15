FROM tomcat:latest
COPY /home/slavenode1/workspace/SA-Devops1/target/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["cataline.sh", "run"]
