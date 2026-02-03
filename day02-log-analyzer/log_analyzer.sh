#!/bin/bash

LOG_FILE=""

if [ -f /var/log/auth.log ]; then
    LOG_FILE="/var/log/auth.log"
elif [ -f /var/log/secure ]; then
    LOG_FILE="/var/log/secure"
else
    echo "No auth log file found."
    exit 1
fi

REPORT="ssh_log_report.txt"

echo "SSH Log Analysis Report" > $REPORT
echo "Generated on: $(date)" >> $REPORT
echo "--------------------------------" >> $REPORT

echo "" >> $REPORT
echo "Failed SSH Login Attempts:" >> $REPORT
grep "Failed password" $LOG_FILE >> $REPORT

echo "" >> $REPORT
echo "Successful SSH Logins:" >> $REPORT
grep "Accepted password" $LOG_FILE >> $REPORT

echo "" >> $REPORT
echo "Summary:" >> $REPORT
echo "Failed attempts: $(grep -c 'Failed password' $LOG_FILE)" >> $REPORT
echo "Successful logins: $(grep -c 'Accepted password' $LOG_FILE)" >> $REPORT

echo "Report generated: $REPORT"
