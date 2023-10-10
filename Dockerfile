ARG ALPINE_VERSION=3.18.4
FROM alpine:${ALPINE_VERSION}

RUN apk add --no-cache postgresql15-client zip tini
ADD *.sh wait-for/*.sh /usr/local/bin/

ENTRYPOINT [ "/sbin/tini", "--", "/usr/local/bin/multi.sh" ]