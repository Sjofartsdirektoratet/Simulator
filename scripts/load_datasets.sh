#!/bin/bash
set -eo pipefail

# Seeds Fuseki server with dataset for APS and ET
# Expects the datasets to be available as specified in the docker-compose file
# Override the applicable environment variables if they are located elsewhere


# --- Help functions and variables ---

script_name=$0
log() {
  echo -e "[$script_name $(date --rfc-3339=seconds)] $*"
}

if [[ -z "$APS_DATASET_PATH" ]]; then
  APS_DATASET_PATH="/aps-dataset"
fi

if [[ -z "$ET_DATASET_PATH" ]]; then
  ET_DATASET_PATH="/et-dataset"
fi

# --- Script start ---

log "Waiting on server to start up..." && sleep 10
error_occured=false

log "\n\n-----------------\nSeeding APS dataset\n"
pushd "$APS_DATASET_PATH"
for f in *.ttl; do
  log "Sending $f..."
  curl --silent --fail -X POST -H "Content-Type: text/turtle" --data-binary "@$f" \
    http://localhost:3030/APS/data?default || { error_occured=true; log "ERROR: Failed to send $f to Fuseki"; }
done
popd

log "\n\n----------------\nSeeding ET dataset\n"
pushd "$ET_DATASET_PATH"
for f in *.ttl; do
  log "Sending $f..."
  curl --silent --fail -X POST -H "Content-Type: text/turtle" --data-binary "@$f" \
    http://localhost:3030/ET/data?default || { error_occured=true; log "Failed to send $f to Fuseki"; }
done
popd

if [[ "$error_occured" = true ]]; then
  log "ERROR: One or more datasets were not successfully sent"
  exit 1
fi

log "Completed successfully"
