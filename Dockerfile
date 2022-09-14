#Use OpenJDK 18 or leave colen and tag empty for default or latest version
FROM openjdk:18

# Create new app directory for my application files (this directory will live inside the container and not the host machine)
# the RUN command applies only to the image
RUN mkdir /helloApp

# Copy application files from host machine to image filesystem
# the COPY command applies to the host machine in the first argument and to the image in the second argument
COPY out/production/HelloDockerDemo/ /helloApp

# Set directory for executing future commands
WORKDIR /helloApp

# Specifying a default instruction for the container, in this case we want the container to run the main class or application
CMD java Main

