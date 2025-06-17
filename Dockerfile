FROM tomcat:9.0.106

COPY webapps/* /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
