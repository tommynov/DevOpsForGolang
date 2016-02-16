FROM golang:1.5.3-alpine

RUN mkdir -p /go/src/app
WORKDIR /go/src/app

# this will ideally be built by the ONBUILD below ;)
CMD ["go-wrapper", "run"]

ONBUILD COPY . /go/src/app
ONBUILD RUN go-wrapper download
ONBUILD RUN go-wrapper install

# Run the golang-docker command by default when the container starts.
ENTRYPOINT /go/bin/app

EXPOSE 8080/tcp
