# Use the official MySQL 8.0 image as the base image
#FROM mysql:8.0
 
# Copy our custom MySQL configuration file that sets the bind-address to 0.0.0.0.
# This ensures that MySQL listens on all network interfaces for remote connections.
#COPY custom.cnf /etc/mysql/conf.d/
 
# Set environment variables for the initial database setup:
# - MYSQL_DATABASE: Name of the application database.
# - MYSQL_USER: Non-root user for application connections.
# - MYSQL_PASSWORD: Password for the non-root user.
# - MYSQL_ROOT_PASSWORD: Password for the root user.
#ENV MYSQL_DATABASE=chatapp
#ENV MYSQL_USER=chatapp
#ENV MYSQL_PASSWORD=examplepassword
#ENV MYSQL_ROOT_PASSWORD=rootpassword
 
# Expose MySQL's default port
#EXPOSE 3306
FROM ubuntu:22.04
# Set the maintainer label
LABEL maintainer="bhavyal321@gmail.com"
# Useng the official MySQL image from Docker Hub
FROM mysql:latest
# Set environment variables to configure MySQL
ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=chatapp
ENV MYSQL_HOST=localhost
# Expose MySQL port 3306
EXPOSE 3306
