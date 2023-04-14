# Use the base image of Ubuntu
FROM ubuntu:latest

# Update the repository sources list
RUN apt-get update

# Install Nginx
RUN apt-get install -y nginx

# Expose ports
EXPOSE 80

# Start Nginx service
CMD ["nginx", "-g", "daemon off;"]


FROM tomcat:8.0

LABEL maintainer="example@gmail.com"

EXPOSE 8080

CMD ["catalina.sh","run"]