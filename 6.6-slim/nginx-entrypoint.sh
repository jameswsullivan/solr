#!/bin/bash

sed -i "s|CONTEXT_PATH|${CONTEXT_PATH}|g" /etc/nginx/conf.d/default.conf
sed -i "s|SOLR_HOST|${SOLR_HOST}|g" /etc/nginx/conf.d/default.conf
sed -i "s|SOLR_PORT|${SOLR_PORT}|g" /etc/nginx/conf.d/default.conf

nginx -g "daemon off;"