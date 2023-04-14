# Use the base image of Ubuntu
FROM ubuntu:latest

# Update the repository sources list
RUN apt-get update

# Install Nginx
RUN apt-get install -y nginx

# Install Tomcat
RUN apt-get install -y tomcat7

# Expose ports
EXPOSE 80
EXPOSE 8080

# Start Nginx service
CMD ["service", "nginx", "start"]

# Start Tomcat service
CMD ["service", "tomcat7", "start"]