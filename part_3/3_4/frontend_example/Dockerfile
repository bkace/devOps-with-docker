# Start from the node image 
FROM node:lts-alpine3.13
# Exposing a container port means that we tell Docker that the container listens to a certain port
# This doesn’t actually do much except helps us humans with the configuration.
EXPOSE 5000

# Use /usr/src/app as our workdir. The following instructions will be executed in this location.
WORKDIR /usr/src/app

# Copy all the contents from this location (.) to /usr/src/app/ creating /usr/src/app/<all_contents_from_repo>
COPY . .

# Install curl for installing node
RUN node -v && npm -v && \
    npm install && \
    REACT_APP_BACKEND_URL=http://localhost/api npm run build && \
    npm install -g serve && \
    adduser -D appuser && \
    chown -R appuser /usr/src/app

USER appuser

# And finally the command to run the application
CMD [ "serve", "-s", "-l", "5000", "build" ]

