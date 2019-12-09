FROM debian:stretch-slim

LABEL authors https://www.oda-alexandre.com/

ENV USER dnscrypt
ENV VERSION 3.3.1.0
ENV DEBIAN_FRONTEND noninteractive

RUN echo -e '\033[36;1m ******* INSTALL APP ******** \033[0m'; \
  apt update && apt install --no-install-recommends -y \
  sudo \
  dnscrypt-proxy

RUN echo -e '\033[36;1m ******* ADD USER ******** \033[0m'; \
  useradd -d /home/${USER} -m ${USER}; \
  passwd -d ${USER}; \
  adduser ${USER} sudo

RUN echo -e '\033[36;1m ******* SELECT USER ******** \033[0m'
USER ${USER}

RUN echo -e '\033[36;1m ******* SELECT WORKING SPACE ******** \033[0m'
WORKDIR /home/${USER}

RUN echo -e '\033[36;1m ******* CLEANING ******** \033[0m'; \
  sudo apt-get --purge autoremove -y; \
  sudo apt-get autoclean -y; \
  sudo rm /etc/apt/sources.list; \
  sudo rm -rf /var/cache/apt/archives/*; \
  sudo rm -rf /var/lib/apt/lists/*

RUN echo -e '\033[36;1m ******* CONTAINER START COMMAND ******** \033[0m'
CMD sudo dnscrypt-proxy -R dnscrypt.org-fr /etc/dnscrypt-proxy/dnscrypt-proxy.conf \