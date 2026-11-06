#!/bin/bash
if [ -n "$GATEWAY" ]; then
  ip route replace default via "$GATEWAY"
fi

rm -f /run/kea/kea-dhcp4.kea-dhcp4.pid

exec kea-dhcp4 -c /etc/kea/kea-dhcp4.conf -d