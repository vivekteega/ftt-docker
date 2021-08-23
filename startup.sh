#!/bin/bash

VIRTUAL_ENV=$1
if [ -z $VIRTUAL_ENV ]; then
  echo "usage: $0 /home/production/deployed/flo-token-tracking-bootstrap/py3.8/bin/python tracktokens-smartcontracts.py
  exit 1
fi

. $VIRTUAL_ENV/bin/activate
shift 1
exec "$@"
deactivate
