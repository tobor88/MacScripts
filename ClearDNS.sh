#!/bin/zsh

if [ "$1" == '-h' ]
then
	echo 'Usage: sudo ./flushdns'
else

	device=$(hostname)
	user=$(whoami)

	killall -HUP mDNSResponder
  echo "DNS cache has been flushed"

	killall -HUP mDNSResponder
  killall mDNSResponderHelper
  dscacheutil -flushcache
  echo "$device DNS cache has been cleared"

fi
