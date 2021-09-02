FROM alpine

RUN \
  set -xe && \
  apk add --no-cache postfix postfix-pcre

COPY . /

CMD ["sh", "/run.sh"]
