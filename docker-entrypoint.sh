#!/bin/bash

set -e

# Run as user "kibana" if the command is "kibana"
if [ "$1" = 'kibana' ]; then
	sed -ri "s/localhost:9200/elasticsearch:9200/" /opt/kibana/config/kibana.yml
	set -- gosu kibana   "$@"
fi

exec "$@"
