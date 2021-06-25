# Start from the ubuntu image
FROM ubuntu:18.04

# Install curl, exit immediately if a command exits with a non-zero status, and print commands and their arguments in a sequential way
RUN set -ex \
    && apt-get update \
    && apt-get install -y --no-install-recommends curl 


# Use /usr/src/app as our workdir. The following instructions will be executed in this location.
WORKDIR /usr/src/app

# Copy the website.sh file from this location to /usr/src/app/ creating /usr/src/app/hello.sh.
COPY website.sh .

# As  we skipped chmod for the script, we add execution permissions during the build.
RUN chmod +x website.sh

CMD ./website.sh
