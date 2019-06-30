# DNSCRYPT

<img src="https://dnscrypt.info/_nuxt/img/dnscrypt.cd47d19.png" width="200" height="200"/>


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequisites](#PREREQUISITESITES)
- [Install](#INSTALL)
- [License](#LICENSE)


## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/dnscrypt/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/dnscrypt/commits/master)


## INTRODUCTION

Docker image of :

- [dnscrypt](https://www.dnscrypt.org/)

Continuous integration on :

- [gitlab](https://gitlab.com/oda-alexandre/dnscrypt/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/dnscrypt/).


## PREREQUISITES

Use [docker](https://www.docker.com)


## INSTALL

```
docker run -ti --name dnscrypt --network host --restart=always alexandreoda/dnscrypt
```


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/dnscrypt/blob/master/LICENSE)
