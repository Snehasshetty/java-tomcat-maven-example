# Use official Tomcat base image
FROM tomcat:9.0-jdk11-openjdk

# Remove default webapps (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into the Tomcat webapps directory
# Assuming your WAR ends up at target/<artifactId>.war
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose the port Tomcat listens on
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
