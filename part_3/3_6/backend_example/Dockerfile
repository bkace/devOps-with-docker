# Using golang official image from Docker hub
FROM golang:1.16-alpine3.14 AS build-stage

# Use /src as our build stage workdir. The following instructions will be executed in this location.
WORKDIR /src

# Added the go.* files and download the modules before adding the rest of the source
# This allows Docker to cache the modules as it will only rerun these steps if the go.* files change
COPY go.* .

RUN go mod download

# Copy all the contents from this location (.) to /src creating /src/<all_contents_from_repo>
COPY . .

# Set ENV to pass an url through the cors check
ENV REQUEST_ORIGIN=http://localhost:5000

# Build project and statically compile our app with all libraries built in 
RUN apk add --no-cache build-base && \
    CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o /src/server && \
    go test ./... && \
    apk del build-base 

FROM scratch

WORKDIR /usr/src/app

COPY --from=build-stage /src/server /usr/src/app

EXPOSE 8080

ENTRYPOINT [ "./server" ]

