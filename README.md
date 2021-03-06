# DNSCRYPT

![logo](https://assets.gitlab-static.net/uploads/-/system/project/avatar/12904442/dnscrypt.png)

- [DNSCRYPT](#dnscrypt)
  - [BADGES](#badges)
  - [INTRODUCTION](#introduction)
  - [PREREQUISITES](#prerequisites)
  - [BUILD](#build)
    - [DOCKER RUN](#docker-run)
    - [DOCKER COMPOSE](#docker-compose)
  - [LICENSE](#license)

## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/dnscrypt/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/dnscrypt/commits/master)

## INTRODUCTION

Docker image of :

- [dnscrypt](https://www.dnscrypt.org/)

Continuous integration on :

- [gitlab pipelines](https://gitlab.com/oda-alexandre/dnscrypt/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/dnscrypt/).

## PREREQUISITES

Use [docker](https://www.docker.com)

## BUILD

### DOCKER RUN

```\
docker run -ti \
--name dnscrypt \
--restart unless-stopped \
--network host \
--cap-add=NET_ADMIN \
-v /etc/localtime:/etc/localtime:ro \
alexandreoda/dnscrypt
```

### DOCKER COMPOSE

```yml
version: "2.0"

services:
  dnscrypt:
    container_name: dnscrypt
    image: alexandreoda/dnscrypt
    restart: unless-stopped
    network_mode: host
    privileged: false
    cap_add:
      - NET_ADMIN
    volumes:
      - "/etc/localtime:/etc/localtime:ro"
```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/dnscrypt/blob/master/LICENSE)
