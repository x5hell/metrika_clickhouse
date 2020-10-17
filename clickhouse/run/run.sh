#!/bin/bash

set -ex

if [[ ! -e "/usr/src/configs/config.json.example" ]]; then
	git clone https://github.com/x5hell/logs_api_integration.git /usr/src
	cd /usr/src
	pip install requests
	cp /usr/src/configs/config.json.example /usr/src/configs/config.json
	sed -i "s/<your_token>/${API_METRIKA_ACCESS_TOKEN}/" /usr/src/configs/config.json
	sed -i "s/<your_counter_id>/${METRIKA_COUNTER_ID}/" /usr/src/configs/config.json
    sed -i "s/<table_visits_all_field_list>/${VISITS_ALL_FIELDS}/" /usr/src/configs/config.json
    sed -i "s/<table_hits_all_field_list>/${HITS_ALL_FIELDS}/" /usr/src/configs/config.json
fi

/entrypoint.sh
