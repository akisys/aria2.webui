#!/bin/sh

[ "$DEBUG" == "YES" ] && set -x;

DIR=/docker-entrypoint.d

if [ -d "$DIR" ];
then
  /usr/bin/run-parts --report --exit-on-error --regex '\.(sh|py)' "$DIR"
fi

if [ $? -ne 0 ];
then
    echo "Previous errors preventing container start. Bailing out now!" >&2
    exit 1
fi

exec "$@"
