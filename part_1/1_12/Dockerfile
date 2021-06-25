# Start from the ubuntu image 
FROM ubuntu:18.04

# Exposing a container port means that we tell Docker that the container listens to a certain port
# This doesn’t actually do much except helps us humans with the configuration.
EXPOSE 5000

# Use /usr/src/app as our workdir. The following instructions will be executed in this location.
WORKDIR /usr/src/app

# Install curl for installing node
RUN set -ex \
    && apt-get update \
    && apt-get install -y curl

# Install node, found from the internet
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs

# Check your install with `node -v && npm -v`
RUN node -v && npm -v

# Copy all the contents from this location (.) to /usr/src/app/ creating /usr/src/app/<all_contents_from_repo>
COPY . .

# Install all dependencies
RUN npm install

# Build the static files as mentioned in README
RUN npm run build

# Install npm package serve to serve the project
RUN npm install -g serve

# And finally the command to run the application
CMD [ "serve", "-s", "-l", "5000", "build" ]

