#!/bin/sh

COUNT=${1:?Pipeline count or build number is required!}
RUN_NUMBER=${2:-1}
URL="http://10.202.128.40:8153/go/files/master-e2e-tests/${COUNT}/run-test/${RUN_NUMBER}/do-test/cruise-output/console.log"

LOG_FILE="/tmp/console-${COUNT}-${RUN_NUMBER}.log"

if [ -s $LOG_FILE ]
then
  less $LOG_FILE
else
  wget -O- $URL | tee "$LOG_FILE" | less
fi

