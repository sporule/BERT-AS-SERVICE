#!/bin/sh

bert-serving-start -http_port 8125 -num_worker=$NUM_WORKERS -model_dir /app/models/$MODEL

tail -f /dev/null