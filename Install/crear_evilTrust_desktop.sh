#!/bin/bash

APP_NAME="evilTrust"

EXEC_PATH="/opt/evilTrust/evilTrust.sh -m gui"
ICON_PATH="/usr/local/share/evilTrust/images/evil.png"

APPLICATIONS_DESKTOP_FILE="/usr/share/applications/kali-evilTrust.desktop"
KALI_MENU_DESKTOP_FILE="/usr/share/kali-menu/applications/kali-evilTrust.desktop"

DESKTOP_ENTRY="[Desktop Entry]
Name=$APP_NAME
Comment=Utilidad para simular puntos de acceso WiFi maliciosos en pruebas de seguridad
Encoding=UTF-8
Exec=sudo $EXEC_PATH
Icon=$ICON_PATH
StartupNotify=false
Terminal=true
Type=Application
Categories=Network;Security;
NoDisplay=false
X-Kali-Package=wifite"

create_desktop_file() {
    local file_path="$1"
    echo "$DESKTOP_ENTRY" | sudo tee "$file_path" > /dev/null
    sudo chmod 644 "$file_path"
    echo "¡El archivo .desktop en $file_path se ha creado exitosamente!"
}

create_desktop_file "$APPLICATIONS_DESKTOP_FILE"
create_desktop_file "$KALI_MENU_DESKTOP_FILE"

sudo update-desktop-database
sudo updatedb

echo "Todos los archivos .desktop han sido creados y la base de datos del menú ha sido actualizada."

