#!/bin/sh

if [[ -f /configure.sh ]]; then
  sh /configure.sh
fi

postfix check && postfix reload
