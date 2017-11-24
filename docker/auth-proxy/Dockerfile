FROM nginx:alpine

RUN apk update && \
  apk add \
    ca-certificates \
    nginx \
    apache2-utils \
    certbot \
  && rm -rf /var/cache/apk/*

COPY config/nginx.conf /etc/nginx/nginx.conf
COPY config/default.conf /etc/nginx/conf.d/default.conf
COPY config/ssl.conf /etc/nginx/snippets/ssl.conf

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
