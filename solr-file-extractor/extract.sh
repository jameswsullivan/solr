read -p "Enter the solr release tag (e.g. 9.5.0): " SOLR_RELEASE_TAG

mkdir ${SOLR_RELEASE_TAG}

# docker cp solr-file-extractor:/opt/solr/server/solr/solr.xml ./${SOLR_RELEASE_TAG}
docker cp solr-file-extractor:/opt/solr/server/contexts/solr-jetty-context.xml ./${SOLR_RELEASE_TAG}
docker cp solr-file-extractor:/opt/solr/server/etc/jetty.xml ./${SOLR_RELEASE_TAG}

echo
echo "XML files have been extracted ..."
ls -al
echo

read -p "Press Enter to exit ..."