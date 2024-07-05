#!/bin/sh

#first check if kong admin api is up
#curl -f http://localhost:8001/status || exit 1

#then check the health of kong
kong health || exit 1

exit 0
