#!/usr/bin/env sh
set -ex

if [ "$SKIP_SSL_VALIDATION" = true ]
then
  get_code="curl -s -k -I $CONCOURSE_DEMO_URL | head -n 1 | cut -d$' ' -f2"
else
  get_code="curl -s -I $CONCOURSE_DEMO_URL | head -n 1 | cut -d$' ' -f2"
fi
status_code=`eval $get_code`
if [ "$status_code" != "200" ]
then
  echo "Expect status code from $CONCOURSE_DEMO_URL as 200, but got $status_code"
  exit 1
fi
