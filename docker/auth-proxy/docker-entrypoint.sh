#!/bin/sh
set -e

PROXY_AUTH_USER=${AUTH_PROXY_USER:-'admin'}

sed -i "s/AUTH_PROXY_DOMAIN/$AUTH_PROXY_DOMAIN/g" /etc/nginx/conf.d/default.conf
sed -i "s/AUTH_PROXY_SERVICE_NAME/$AUTH_PROXY_SERVICE_NAME/g" /etc/nginx/nginx.conf

certbot certonly \
  --verbose \
  --noninteractive \
  --quiet \
  --standalone \
  --agree-tos \
  --email="${AUTH_PROXY_EMAIL}" \
  --domains="${AUTH_PROXY_DOMAIN}"

mkdir -p /run/nginx

htpasswd -b -c /etc/nginx/.htpasswd $AUTH_PROXY_USER $AUTH_PROXY_PASS

nginx

exec "$@"
