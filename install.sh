#!/bin/bash
set -e

# Instalación
cd /opt
sudo rm -rf evilTrust
sudo git clone https://github.com/s4vitar/evilTrust.git
cd evilTrust
sudo chmod +x evilTrust.sh
ls -ltha

# Acceso Directo
cd
echo "cd && cd /opt/evilTrust && sudo ./evilTrust.sh -m terminal" > eviltrust
echo "cd && cd /opt/evilTrust && sudo ./evilTrust.sh -m gui" > eviltrustg
chmod +x eviltrust
chmod +x eviltrustg
sudo rm -rf /usr/local/bin/eviltrust
sudo rm -rf /usr/local/bin/eviltrustg
sudo mv eviltrust /usr/local/bin/
sudo mv eviltrustg /usr/local/bin/
cd

# Paquete
sudo apt-get -y update
sudo apt-get install -y php dnsmasq hostapd

# Crear icon y Desktop
sudo wget https://raw.githubusercontent.com/dzh0ni/evilTrust/master/Install/setup_icon.sh -O - | sudo bash && sudo rm -rf wget-log*
sudo wget https://raw.githubusercontent.com/dzh0ni/evilTrust/master/Install/crear_evilTrust_desktop.sh -O - | sudo bash && sudo rm -rf wget-log*

echo "Instalación completa. Usa 'eviltrust' para terminal o 'eviltrustg' para GUI."
