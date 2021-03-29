#!/usr/bin/env bash

bin/maxwell --user=$DB_USERNAME --password=$DB_PASSWORD --host=$DB_HOST --port=$DB_PORT \
--producer=kafka \
--kafka.bootstrap.servers=$KAFKA_HOSTS --log_level=$LOG_LEVEL \
--kafka_topic=$KAFKA_TOPIC \
--kafka_partition_by=$KAFKA_PARTITION_BY \
--kafka_partition_columns=$KAFKA_PARTITION_COLUMNS \
--kafka_partition_by_fallback=$KAFKA_PARTITION_BY_FALLBACK \
--include_tables=$INCLUDE_TABLES \
--metrics_type=http \
--metrics_http_port=$METRICS_HTTP_PORT \
--schema_database=$MAXWELL_DATABASE_NAME \
--client_id=$CLIENT_ID $EXTRA_PARAMS
