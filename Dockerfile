FROM tomcat:9.0.20-jre8-alpine

RUN rm -rf /usr/local/tomcat/webapps/docs /usr/local/tomcat/webapps/examples /usr/local/tomcat/webapps/ROOT
ADD wavsep.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD chmod +x /usr/local/tomcat/bin/catalina.sh
CMD ["catalina.sh", "run"]
