# Using golang official image from Docker hub
FROM golang:1.16.5-alpine3.13

# GCC for running test
RUN apk add build-base

# Exposing a container port means that we tell Docker that the container listens to a certain port
# This doesn’t actually do much except helps us humans with the configuration.
EXPOSE 8080

# Use /usr/src/app as our workdir. The following instructions will be executed in this location.
WORKDIR /usr/src/app

# Copy all the contents from this location (.) to /usr/src/app/ creating /usr/src/app/<all_contents_from_repo>
COPY . .

# Build project
RUN go build

# Run Test
RUN go test ./...

# And finally the command to run the application
CMD ./server