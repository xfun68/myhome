#!/bin/sh

function play_and_update()
{
  afplay ~/Downloads/apollo13.wav
  echo $latest_failed > reported_failed.txt
  echo $current_time > last_reported_time.txt
}

curl --silent 'http://10.202.128.5:8153/go/cctray.xml' > cctray.xml

latest_failed=`cat cctray.xml | egrep -v '::[^:]+::' | grep -v 'lastBuildStatus="Success"' | cut -d'"' -f 10 | grep '^201' | sort -r | head -n1`
reported_failed=`cat reported_failed.txt 2>/dev/null`
reported_failed=${reported_failed:-0}

echo "$latest_failed <-> $reported_failed"


current_time=`date +%s`
last_reported_time=`cat last_reported_time.txt`
last_reported_time=${last_reported_time:-0}

echo "$current_time - $last_reported_time = $(( $current_time - $last_reported_time ))"

if [ "" == "$latest_failed" ]
then
  exit 0
fi

if [ "$latest_failed" != "$reported_failed" ]
then
  play_and_update
  exit 0
fi

if [ $(( $current_time - $last_reported_time )) -ge $(( 15 * 60 )) ]
then
  play_and_update
  exit 0
fi

exit 0

