FROM tomcat:10.1-jdk17-temurin-alpine
RUN rm -rf /usr/local/tomcat/webapps/*
COPY target/addressbook-2.0.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
