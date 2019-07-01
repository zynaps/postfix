#!/usr/bin/env sh

set -xe

if [[ "$1" = "s6-svscan" ]]; then
    [[ -f /etc/postfix/main.cf.local ]] && source /etc/postfix/main.cf.local

    postfix check || exit 1
fi

exec "$@"
