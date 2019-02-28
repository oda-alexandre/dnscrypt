# DNSCRYPT

![dnscrypt](https://raw.githubusercontent.com/oda-alexandre/dnscrypt/master/img/logo-dnscrypt.png) ![docker](https://raw.githubusercontent.com/oda-alexandre/dnscrypt/master/img/logo-docker.png)


## INDEX

- [Build Docker](#BUILD)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BUILD DOCKER

[![dnscrypt docker build](https://img.shields.io/docker/build/alexandreoda/dnscrypt.svg)](https://hub.docker.com/r/alexandreoda/dnscrypt)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de [dnscrypt](https://www.dnscrypt.org/) pour [docker](https://www.docker.com), mis à jour automatiquement dans le [docker hub](https://hub.docker.com/r/alexandreoda/dnscrypt/) public.


## PREREQUIS

Installer [docker](https://www.docker.com)


## INSTALLATION

```
docker run -ti --name dnscrypt -v /etc/localtime:/etc/localtime:ro --network host --restart=always alexandreoda/dnscrypt
```


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/dnscrypt/blob/master/LICENSE)
