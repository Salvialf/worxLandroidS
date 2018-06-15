#! /bin/bash

echo "Début d'installation des dépendances"
sudo apt-get -y autoremove
sudo apt-get -y dist-upgrade

wget http://repo.mosquitto.org/debian/mosquitto-repo.gpg.key
sudo apt-key add mosquitto-repo.gpg.key
rm mosquitto-repo.gpg.key

cd /etc/apt/sources.list.d/
sudo wget http://repo.mosquitto.org/debian/mosquitto-wheezy.list
sudo apt-get -y update

sudo apt-get -y install mosquitto mosquitto-clients
echo "Fin installation des dépendances"
