FROM golang:1.5.3-onbuild

RUN ls -la /go/bin
RUN ls -la .
RUN pwd .

CMD ifconfig

# Run the golang-docker command by default when the container starts.
ENTRYPOINT /go/bin/app

EXPOSE 8080/tcp
