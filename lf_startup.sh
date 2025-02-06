#!/bin/sh

echo "Starting postgresql ..."
service start postgresql

echo "Starting LiquidFeedback Update Service... "
service start liquid_feedback_core

echo "Starting Liquid Feedback Frontend... "
service start liquid_feedback_frontend

tail -f "/opt/liquid_feedback_core/lf_core"