# auth-proxy
A repo for an nginx auth proxy with letsencrypt ssl

## Requirements
* [Docker for Mac](https://www.docker.com/docker-mac)

## Usage
* Update AUTH_PROXY_USER and AUTH_PROXY_PASS in .env
* Build and run container

```
$ export AUTH_PROXY_DOMAIN=<auth_proxy_domain>
$ export AUTH_PROXY_EMAIL=<auth_proxy_email>
$ export AUTH_PROXY_PASS=<auth_proxy_pass>
$ make build
$ make up
```
