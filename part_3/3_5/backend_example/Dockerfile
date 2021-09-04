# Using golang alpine variant official image from Docker hub
FROM golang:1.16-alpine3.14

# Exposing a container port means that we tell Docker that the container listens to a certain port
# This doesn’t actually do much except helps us humans with the configuration.
EXPOSE 8080

# Use /usr/src/app as our workdir. The following instructions will be executed in this location.
WORKDIR /usr/src/app

# Copy all the contents from this location (.) to /usr/src/app/ creating /usr/src/app/<all_contents_from_repo>
COPY . .

# Set ENV to pass an url through the cors check
ENV REQUEST_ORIGIN=http://localhost:5000

# Build project
RUN apk add --no-cache build-base  &&\
    go build && \
    go test ./... && \
    apk del build-base && \
    adduser -D appuser && \
    chown -R appuser /usr/src/app

USER appuser

# And finally the command to run the application
CMD ./server