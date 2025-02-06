#!/bin/sh
echo "Starting LiquidFeedback Update Service... "
systemctl start liquid_feedback_core
# systemctl enable liquid_feedback_core

echo "Starting Liquid Feedback Frontend... "
systemctl start liquid_feedback_frontend
# systemctl enable liquid_feedback_frontend

tail -f "/opt/liquid_feedback_frontend/lf_frontend"