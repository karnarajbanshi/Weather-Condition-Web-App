FROM tomcat:9.0

# Copy the WAR file into the webapps directory of Tomcat
ADD **/*.war /usr/local/tomcat/webapps/

# Add MySQL Connector/J to the lib directory of Tomcat
ADD mysql-connector-java-5.1.6.jar /usr/local/tomcat/lib/

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
