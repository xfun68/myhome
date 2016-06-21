#!/bin/bash

if [[ $# -eq 2 ]]; then
  echo $1 | egrep --silent '\d$' && sleep $1
  echo $1 | egrep --silent 's$' && sleep ${1%s}
  echo $1 | egrep --silent 'm$' && sleep $( echo "(${1%m} * 60)/1" | bc )
  echo $1 | egrep --silent 'h$' && sleep $( echo "(${1%h} * 3600)/1" | bc )
  shift
fi

/usr/bin/osascript -e "display notification \"${*/\"/\\\"}\" with title \"CLI Notification\""

