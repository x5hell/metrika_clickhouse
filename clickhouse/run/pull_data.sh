#!/bin/bash
set -ex
sleep 30
START_DATE=$(date  --date="14 days ago" +"%F")
END_DATE=$(date  --date="1 days ago" +"%F")
python2 metrica_logs_api.py -source visits -start_date $START_DATE -end_date $END_DATE > /var/log/pull_data.log