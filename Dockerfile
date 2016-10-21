FROM alpine:3.4
RUN apk add --no-cache ca-certificates fuse && rm -rf /tmp/*
ADD gcsfuse /usr/local/bin
WORKDIR /
