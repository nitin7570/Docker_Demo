# Test web app that returns the name of the host/pod/container servicing req
# Linux x64
FROM node:current-centos

# Create directory in container image for app code
RUN mkdir -p /usr/src/demoApp

# Copy app code (.) to /usr/src/app in container image
COPY . /usr/src/demoApp

# Set working directory context
WORKDIR /usr/src/demoApp

# Install dependencies from packages.json
RUN sudo yum install -y python3
RUN sudo yum install -y pip3
RUN sudo yum install -y django

# Command for container to execute
ENTRYPOINT [ "python", "manage.py" ]