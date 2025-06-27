#!/bin/bash

## :computer: Instalación

cd /opt
sudo rm -rf evilTrust
sudo git clone https://github.com/s4vitar/evilTrust.git
cd evilTrust
sudo chmod +x evilTrust.sh
ls -ltha

## :key: Acceso Directo

cd 
sudo echo "cd && cd /opt/evilTrust && sudo ./evilTrust.sh -m terminal" > eviltrust
sudo echo "cd && cd /opt/evilTrust && sudo ./evilTrust.sh -m gui" > eviltrustg
sudo chmod +x eviltrust
sudo chmod +x eviltrustg
sudo rm -rf /usr/local/bin/eviltrust
sudo rm -rf /usr/local/bin/eviltrustg
sudo mv eviltrust /usr/local/bin/
sudo mv eviltrustg /usr/local/bin/
cd

## :package: Paquete

sudo apt-get -y update
sudo apt-get install -y php
sudo apt-get install -y dnsmasq
sudo apt-get install -y hostapd

## :computer: Crear Desktop

# Nombre de la aplicaciÃ³n

sudo wget https://raw.githubusercontent.com/dzh0ni/evilTrust/master/Install/setup_icon.sh -O - | sudo bash && sudo rm -rf wget-log*

sudo wget https://raw.githubusercontent.com/dzh0ni/evilTrust/master/Install/crear_evilTrust_desktop.sh -O - | sudo bash && sudo rm -rf wget-log*
