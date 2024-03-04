FROM tomcat:9.0

# Download MySQL Connector/J
RUN wget -O /usr/local/tomcat/lib/mysql-connector-java-5.1.6.jar https://repo1.maven.org/maven2/mysql/mysql-connector-java/5.1.6/mysql-connector-java-5.1.6.jar

# Copy the war file to the webapps directory
ADD **/*.war /usr/local/tomcat/webapps/

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
