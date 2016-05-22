# Author Sanskar Modi
# github.com/sanskar-modi

# This Dockerfile is used to create a docker image for the container

FROM ubuntu:latest

# Install Dependencies :

RUN apt-get update && \
		apt-get install -y python git python-pip

# Setup the workspace

RUN mkdir firstcourse-xss
WORKDIR firstcourse-xss

# Cop all the files

COPY * ./

EXPOSE 5000

# Run the services

CMD ["bash", "run.sh"]