#!/bin/bash

set -e
set -u

COMMAND=$1
SLICES=$2
SIZE=$3
SLEEP_TIME=$4

FIRST=0
LAST=$SIZE
for i in `seq $SLICES`
do
  FIRST=$(expr $FIRST + 1)
  LAST=$(expr $SIZE \* $i)

  eval time fleetctl $COMMAND stable@{$FIRST..$LAST}.service

  echo "Done running $COMMAND on units $FIRST until $LAST. Sleeping for $SLEEP_TIME now."
  sleep $SLEEP_TIME

  FIRST=$LAST
done

echo "Done with all units"
