# Test web app that returns the name of the host/pod/container servicing req
# Linux x64
FROM centos:8

# Create directory in container image for app code
RUN mkdir -p /usr/src/demoApp

# Copy app code (.) to /usr/src/app in container image
COPY . /usr/src/demoApp

# Set working directory context
WORKDIR /usr/src/demoApp

# Install dependencies from packages.json
RUN yum install -y python3 python3-pip
RUN pip3 install Django

# Command for container to execute
ENTRYPOINT [ "python3", "manage.py" ]