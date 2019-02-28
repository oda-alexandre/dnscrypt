FROM debian:stretch-slim

MAINTAINER https://oda-alexandre.github.io

# INSTALLATION DE L'APPLICATION
RUN apt-get update && apt-get install --no-install-recommends -y \
sudo \
dnscrypt-proxy

# AJOUT DE L(UTILISATEUR
RUN useradd -d /home/dnscrypt -m dnscrypt && \
passwd -d dnscrypt && \
adduser dnscrypt sudo

# SELECTION DE L'UTILISATEUR
USER dnscrypt

# SELECTION DE L'ESPACE DE TRAVAIL
WORKDIR /home/dnscrypt

# NETTOYAGE
RUN sudo apt-get --purge autoremove -y && \
sudo apt-get autoclean -y && \
sudo rm /etc/apt/sources.list && \
sudo rm -rf /var/cache/apt/archives/* && \
sudo rm -rf /var/lib/apt/lists/*

# COMMANDE AU DEMARRAGE DU CONTENEUR
CMD sudo dnscrypt-proxy -R dnscrypt.org-fr /etc/dnscrypt-proxy/dnscrypt-proxy.conf
