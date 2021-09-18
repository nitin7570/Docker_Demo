# Test web app that returns the name of the host/pod/container servicing req
# Linux x64
FROM centos:7

# Create directory in container image for app code
RUN mkdir -p /usr/src/demoApp

# Copy app code (.) to /usr/src/app in container image
COPY . /usr/src/demoApp

# Set working directory context
WORKDIR /usr/src/demoApp

# Install dependencies from packages.json
RUN yum install -y python3
RUN yum install -y pip3
RUN yum install -y django

# Command for container to execute
ENTRYPOINT [ "python", "manage.py" ]