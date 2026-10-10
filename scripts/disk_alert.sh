#!/bin/bash

THRESHOLD=80

df -P -x tmpfs -x devtmpfs | awk -v threshold="$THRESHOLD" '
NR > 1 {
    usage = $5
    gsub(/%/, "", usage)

    if (usage >= threshold) {
        printf "WARNING: Disk usage is %s%% on %s\n", usage, $6
    }
}'
