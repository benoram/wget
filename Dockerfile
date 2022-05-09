FROM alpine
LABEL maintainer="Ben Oram <b@oram.co>"

RUN apk add --no-cache tini wget openssl ca-certificates

WORKDIR /data

ENTRYPOINT ["/sbin/tini", "--", "wget"]
CMD ["--help"]