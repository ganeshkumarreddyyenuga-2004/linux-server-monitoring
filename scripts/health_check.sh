#!/bin/bash

PROJECT_DIR="$HOME/linux-server-monitoring"
REPORT_DIR="$PROJECT_DIR/reports"

mkdir -p "$REPORT_DIR"

REPORT_FILE="$REPORT_DIR/health_report_$(date +%Y%m%d_%H%M%S).txt"

{
    echo "LINUX SERVER HEALTH REPORT"
    echo "Date: $(date)"
    echo "Hostname: $(hostname)"
    echo "Uptime: $(uptime -p)"

    echo
    echo "MEMORY USAGE"
    free -h

    echo
    echo "DISK USAGE"
    df -h

    echo
    echo "TOP PROCESSES"
    ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6

    echo
    echo "NGINX STATUS"

    if service nginx status >/dev/null 2>&1; then
        echo "Nginx is running."
    else
        echo "Nginx is not running."
    fi

} > "$REPORT_FILE"

echo "Report saved to: $REPORT_FILE"
