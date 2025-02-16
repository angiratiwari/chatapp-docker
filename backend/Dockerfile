# Ubuntu 22.04 base image
FROM ubuntu:22.04
# Update the package list and install required dependencies
RUN apt-get update
RUN apt-get install python3 python3-pip python3-dev default-libmysqlclient-dev build-essential -y
RUN apt-get update
RUN apt-get install --yes python3-pip
RUN mkdir /myChatapp


# Copy the contents of backend/my-chatapp into /myChatapp in the container
COPY ./my-chatapp /myChatapp

# List the contents of /myChatapp to confirm requirements.txt is present
#RUN ls /myChatapp


#COPY my-chatapp /myChatapp

# Set the working directory for your app in the container
WORKDIR /myChatapp
# Install required Python packages from requirements.txt
RUN pip3 install -r /myChatapp/requirements.txt
# Install additional dependencies if needed for MySQL client
RUN apt install python3-dev default-libmysqlclient-dev build-essential pkg-config -y
# Install the MySQL client library for Python
RUN apt-get update
RUN pip3 install mysqlclient
# Expose port 8000 to the outside world
EXPOSE 8000
# Set the working directory to the Django app's folder
WORKDIR /myChatapp/fundoo/
# Make sure the database schema is applied and then run the Django development server
ENTRYPOINT python3 manage.py migrate && python3 manage.py runserver 0.0.0.0:8000
