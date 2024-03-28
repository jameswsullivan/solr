ARG SOLR_RELEASE_TAG
FROM solr:${SOLR_RELEASE_TAG}

USER root

RUN apt-get update -y && \
    apt-get install nano -y && \
    rm -f /opt/solr/server/contexts/solr-jetty-context.xml && \
    rm -f /opt/solr/server/etc/jetty.xml

COPY ./solr-jetty-context.xml /opt/solr/server/contexts/solr-jetty-context.xml
COPY ./jetty.xml /opt/solr/server/etc/jetty.xml
COPY ./solr-entrypoint.sh /usr/bin/entrypoint.sh

RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT [ "entrypoint.sh" ]