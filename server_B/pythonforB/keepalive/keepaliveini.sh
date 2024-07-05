#!/bin/bash

if [ -d "/container/run/startup/keepalived" ]; then
	rm -rf /container/run/startup/keepalived
fi

if [ -d "/container/run/process/keepalived" ]; then
  rm -rf /container/run/process/keepalived
fi

# Check if the keepalived.conf file exists and remove it if it does
if [ -f "/container/service/keepalived/assets/keepalived.conf" ]; then
  rm -f /container/service/keepalived/assets/keepalived.conf
fi
