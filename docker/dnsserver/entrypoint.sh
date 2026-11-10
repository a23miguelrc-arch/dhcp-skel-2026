#!/bin/bash


# Ruta por defecto a través del router, si se indica
if [ -n "$GATEWAY" ]; then
  ip route replace default via "$GATEWAY"
fi

rsyslogd
if [ -n "$GATEWAY" ]; then
  ip route replace default via "$GATEWAY"
fi
named -u bind "$@"

