#!/bin/bash

sed -i "s|CONTEXT_PATH|${CONTEXT_PATH}|g" /opt/solr/server/contexts/solr-jetty-context.xml
sed -i "s|CONTEXT_PATH|${CONTEXT_PATH}|g" /opt/solr/server/etc/jetty.xml

solr -f -force