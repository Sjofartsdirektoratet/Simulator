#!/bin/bash
echo -e "\n*** Starting Fuseki with datasets for SDIR Simulator ***\n\n"

if [[ -z "$LOAD_DATASETS_SCRIPT_PATH" ]]; then
  LOAD_DATASETS_SCRIPT_PATH=/scripts/load_datasets.sh
fi

"$LOAD_DATASETS_SCRIPT_PATH" &
. /docker-entrypoint.sh /jena-fuseki/fuseki-server
