## Apache Solr with Configurable Context Path

Solr with nginx proxy.


---


Apache Solr doesn't natively support the ability to use a context path other than the default `/solr`. In order to provide support for that, two files:
- `/opt/solr/server/contexts/solr-jetty-context.xml`
- `/opt/solr/server/etc/jetty.xml`

need to be slightly modified. (Search for `CONTEXT_PATH` in the the two xml files in the `/9.5.0` directory or the `entrypoint.sh` script to see where the changes are applied.)

### Build Images

1. Use `solr-file-extractor` to extract the xml files from a desired solr release.
2. Modify the XML files based on the examples provided in `9.5.0`.
3. Make a copy of the `example.env` file and name it `.env`, modify `SOLR_RELEASE_TAG=9.5.0` and `CUSTOM_SOLR_CONTEXT_PATH="solr"` as needed.
4. Build images or run docker compose:
- `BUILDKIT_PROGRESS=plain docker compose build --no-cache`
- `docker compose up -d`

### Use with Kubernetes/Rancher

The purpose of this project is to make it possible to expose multiple solr instances' endpoints (which are used by different projects) under the same host, but under different context paths of our choice, e.g. `api.mydomain.com/app1-solr`, `api.mydomain.com/app2-solr` .