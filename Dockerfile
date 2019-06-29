# IMAGE TO USE
FROM debian:stretch-slim

# MAINTAINER
MAINTAINER https://www.oda-alexandre.com/

# VARIABLES
ENV USER dnscrypt
ENV VERSION 3.3.1.0
ENV DEBIAN_FRONTEND noninteractive

# INSTALL APP
RUN apt-get update && apt-get install --no-install-recommends -y \
sudo \
dnscrypt-proxy && \

# ADD USER
useradd -d /home/${USER} -m ${USER} && \
passwd -d ${USER} && \
adduser ${USER} sudo

# SELECT USER
USER ${USER}

# SELECT WORKING SPACE
WORKDIR /home/${USER}

# CLEANING
RUN sudo apt-get --purge autoremove -y && \
sudo apt-get autoclean -y && \
sudo rm /etc/apt/sources.list && \
sudo rm -rf /var/cache/apt/archives/* && \
sudo rm -rf /var/lib/apt/lists/*

# START THE CONTAINER
CMD sudo dnscrypt-proxy -R dnscrypt.org-fr /etc/dnscrypt-proxy/dnscrypt-proxy.conf \
