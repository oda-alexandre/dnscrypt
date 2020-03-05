# DNSCRYPT

![logo](https://assets.gitlab-static.net/uploads/-/system/project/avatar/12904442/dnscrypt.png)

## INDEX

- [DNSCRYPT](#dnscrypt)
  - [INDEX](#index)
  - [BADGES](#badges)
  - [INTRODUCTION](#introduction)
  - [PREREQUISITES](#prerequisites)
  - [INSTALL](#install)
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

## INSTALL

### DOCKER RUN

```\
docker  run -ti --name dnscrypt --network host --restart unless-stopped --cap-add=NET_ADMIN alexandreoda/dnscrypt
```

### DOCKER COMPOSE

```yml
version: "3.7"

services:
  dnscrypt:
    container_name: dnscrypt
    image: alexandreoda/dnscrypt
    restart: unless-stopped
    network_mode: host
    privileged: false
    cap_add:
      - NET_ADMIN
```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/dnscrypt/blob/master/LICENSE)
