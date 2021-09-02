#!/bin/sh

postconf maillog_file="/dev/stdout"

if [[ -f /configure.sh ]]; then
  sh /configure.sh
fi

exec postfix -v start-fg
