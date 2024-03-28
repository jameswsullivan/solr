## Solr XML file extractor

In order to customize Solr's context path, the following two files need to be modified:
- `/opt/solr/server/contexts/solr-jetty-context.xml`
- `/opt/solr/server/etc/jetty.xml`

The `solr-file-extractor` spins up a solr container, and then uses `extract.sh` to copy the XML files from the container to your local directory.

### Use

1. Make a copy of `example.env` and name the file `.env` and modify the values as needed.
2. `docker compose up -d`
3. Run `./extract.sh`.
