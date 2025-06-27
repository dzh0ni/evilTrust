#!/bin/bash

## :computer: Instalaci�n

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

sudo mkdir -p /usr/local/share/evilTrust/images
sudo cp /opt/evilTrust/images/evil.png /usr/local/share/evilTrust/images/
sudo chmod 644 /usr/local/share/evilTrust/images/evil.png

# Nombre de la aplicación
APP_NAME="evilTrust"

# Ruta del ejecutable
EXEC_PATH="/usr/share/kali-menu/exec-in-shell \"evilTrust\""

# Ruta del ícono
ICON_PATH="/usr/local/share/evilTrust/images/evil.png"

# Rutas de los archivos .desktop
APPLICATIONS_DESKTOP_FILE="/usr/share/applications/kali-evilTrust.desktop"
KALI_MENU_DESKTOP_FILE="/usr/share/kali-menu/applications/kali-evilTrust.desktop"

# Contenido del archivo .desktop
DESKTOP_ENTRY="[Desktop Entry]
Name=$APP_NAME
Comment=Comment=Utilidad para simular puntos de acceso WiFi maliciosos en pruebas de seguridad
Encoding=UTF-8
Exec=$EXEC_PATH
Icon=$ICON_PATH
StartupNotify=false
Terminal=true
Type=Application
Categories=06-wireless-attacks;
X-Kali-Package=wifite"

# Función para crear el archivo .desktop
create_desktop_file() {
    local file_path="$1"
    echo "$DESKTOP_ENTRY" | sudo tee "$file_path" > /dev/null
    sudo chmod 644 "$file_path"
    echo "¡El archivo .desktop en $file_path se ha creado exitosamente!"
}

# Crear el archivo .desktop en /usr/share/applications
create_desktop_file "$APPLICATIONS_DESKTOP_FILE"

# Crear el archivo .desktop en /usr/share/kali-menu/applications
create_desktop_file "$KALI_MENU_DESKTOP_FILE"

# Actualizar la base de datos del menú para reflejar los cambios
sudo update-desktop-database
sudo updatedb

echo "Todos los archivos .desktop han sido creados y la base de datos del menú ha sido actualizada."


