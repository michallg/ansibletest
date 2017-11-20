#!/bin/bash

ENV="$1"
HOST="$2"

echo "ENV: $ENV HOST: $HOST"

ansible-playbook -i environments/$ENV/inventory --limit $HOST -e "env=$1" playbook.yaml
