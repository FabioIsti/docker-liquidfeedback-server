#!/bin/sh

echo "Starting postgresql ..."
/etc/init.d/postgresql start

echo "Starting LiquidFeedback Update Service... "
/opt/liquid_feedback_core/lf_update.sh  2>&1 | logger -t "lf_update" &

echo "Starting Liquid Feedback Frontend... "
/opt/liquid_feedback_frontend/lf_frontend.sh 2>&1 | logger -t "lf_frontend" &

echo "Startup point" > /var/log/syslog
echo "TODO fi logging" > /var/log/syslog

tail -f /var/log/syslog