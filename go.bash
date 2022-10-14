#!/bin/bash
# set -v
while true;
do  
    export RUNNING_TIME=$[ $RANDOM % $RUNNING_MAX_TIME + $RUNNING_MIN_TIME ];
    export SLEEP_TIME=$[ $RANDOM % $SLEEP_MIN_TIME + $SLEEP_MAX_TIME ];
    echo "Running stress_ng with arguments '$STRESS_NG_ARGUMENTS' for $RUNNING_TIME seconds, and then sleeping for $SLEEP_TIME seconds";
    stress-ng $STRESS_NG_ARGUMENTS -t $RUNNING_TIME;
    sleep $SLEEP_TIME;
    echo "";echo "";echo "";echo "";
done