# DNSCRYPT

<img src="https://dnscrypt.info/_nuxt/img/dnscrypt.cd47d19.png" />


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/dnscrypt/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/dnscrypt/commits/master)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de

- [dnscrypt](https://www.dnscrypt.org/)

Mis à jour automatiquement dans le [docker hub public](https://hub.docker.com/r/alexandreoda/dnscrypt/).


## PREREQUIS

Installer [docker](https://www.docker.com)


## INSTALLATION

```
docker run -ti --name dnscrypt --network host --restart=always alexandreoda/dnscrypt
```


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/dnscrypt/blob/master/LICENSE)
