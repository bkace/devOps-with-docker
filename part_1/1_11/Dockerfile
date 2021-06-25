# Using openjdk to get java instead of installing it manually
FROM openjdk:oraclelinux7

# Exposing a container port means that we tell Docker that the container listens to a certain port
# This doesn’t actually do much except helps us humans with the configuration.
EXPOSE 8080

# Use /usr/src/app as our workdir. The following instructions will be executed in this location.
WORKDIR /usr/src/app

# Copy the all the contents from this location (.) to /usr/src/app/ creating /usr/src/app/<all_contents_from_repo>
COPY . .

# Build the project 
RUN /bin/sh -c "./mvnw package"

# And finally the command to run the application
CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]