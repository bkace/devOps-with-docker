# Start from the official docker image 
FROM docker:latest

# Use /usr/src/app as our workdir. The following instructions will be executed in this location.
WORKDIR /usr/src/app

# Copy all the contents from this location (.) to /usr/src/app/ creating /usr/src/app/<all_contents_from_repo>
COPY . .

RUN chmod +x build.sh

ENTRYPOINT ["/bin/sh", "/usr/src/app/build.sh"]

