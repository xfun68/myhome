#!/bin/sh

COUNT=${1:?Pipeline count or build number is required!}
RUN_NUMBER=${2:-1}
URL="http://10.202.128.40:8153/go/files/master-e2e-tests/${COUNT}/run-test/${RUN_NUMBER}/do-test/build/reports/tests/index.html"

links $URL

