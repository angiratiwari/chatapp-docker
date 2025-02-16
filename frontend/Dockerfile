# Use the latest official Nginx image as the base image
#FROM nginx:latest

# (Optional) Remove the default configuration provided by Nginx
#RUN rm /etc/nginx/conf.d/default.conf

# Copy the custom Nginx configuration file into the container
#COPY chatapp.conf /etc/nginx/sites-available/chatapp.conf

# Create the sites-enabled directory if it doesn't exist
#RUN mkdir -p /etc/nginx/sites-enabled

# Create a symlink for chatapp.conf to enable the site in Nginx
#RUN ln -s /etc/nginx/sites-available/chatapp.conf /etc/nginx/sites-enabled/

# Expose port 80 for HTTP traffic
#EXPOSE 80

# Start Nginx when the container runs
#CMD ["nginx", "-g", "daemon off;"]

FROM ubuntu:22.04
RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get update
COPY chatapp.conf /etc/nginx/sites-available/chatapp.conf
RUN ln -s /etc/nginx/sites-available/chatapp.conf /etc/nginx/sites-enabled/
RUN rm -rf /etc/nginx/sites-enabled/default
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
