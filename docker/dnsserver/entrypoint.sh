#!/bin/bash
#chmod a+x safsdadfs
rsyslogd
if [ -n "$GATEWAY" ]; then
  ip route replace default via "$GATEWAY"
fi
named -u bind "$@"

