FROM nginx

RUN apt-get update -y && \
    apt-get install nano -y && \
    rm -f /etc/nginx/conf.d/default.conf

COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./nginx-entrypoint.sh /usr/bin/entrypoint.sh

RUN chmod +x /usr/bin/entrypoint.sh

ENTRYPOINT [ "entrypoint.sh" ]

