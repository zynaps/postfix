FROM alpine:latest
LABEL maintainer="Igor Vinokurov <zynaps@zynaps.ru>"

RUN \
  set -xe && \
  apk add --no-cache s6 rsyslog postfix postfix-pcre

WORKDIR /

COPY rootfs entrypoint.sh ./

EXPOSE 25/tcp

VOLUME ["/etc/postfix", "/var/spool/postfix"]

ENTRYPOINT ["/entrypoint.sh"]

CMD ["s6-svscan", "/etc/s6"]
