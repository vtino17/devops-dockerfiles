#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

for binding in \
    'POSTGRES_BIND_ADDRESS:-127.0.0.1}:5432:5432' \
    'PGADMIN_BIND_ADDRESS:-127.0.0.1}:5050:80' \
    'PROMETHEUS_BIND_ADDRESS:-127.0.0.1}:9090:9090' \
    'GRAFANA_BIND_ADDRESS:-127.0.0.1}:3000:3000' \
    'NODE_EXPORTER_BIND_ADDRESS:-127.0.0.1}:9100:9100'
do
    grep -R -F -- "$binding" postgres/docker-compose.yml monitoring/docker-compose.yml >/dev/null
done
