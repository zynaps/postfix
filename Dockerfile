FROM alpine:latest
LABEL maintainer="Igor Vinokurov <zynaps@zynaps.ru>"

RUN \
  set -xe && \
  apk add --no-cache s6 rsyslog postfix postfix-pcre

WORKDIR /

COPY rootfs ./

CMD ["s6-svscan", "/etc/s6"]
