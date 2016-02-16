FROM golang:1.5.3-alpine

RUN mkdir -p /go/src/app

# Copy the local package files to the container’s workspace.
ADD . /go/src/app

# Build the command inside the container.
RUN go install app

# Run the command when the container starts.
ENTRYPOINT /go/bin/app

EXPOSE 8080/tcp
