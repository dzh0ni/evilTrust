#!/bin/bash

# Nombre de la aplicaciÃ³n
APP_NAME="evilTrust"

# Ruta del ejecutable
EXEC_PATH="/usr/share/kali-menu/exec-in-shell \"evilTrust\""

# Ruta del Ã­cono
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

# FunciÃ³n para crear el archivo .desktop
create_desktop_file() {
    local file_path="$1"
    echo "$DESKTOP_ENTRY" | sudo tee "$file_path" > /dev/null
    sudo chmod 644 "$file_path"
    echo "Â¡El archivo .desktop en $file_path se ha creado exitosamente!"
}

# Crear el archivo .desktop en /usr/share/applications
create_desktop_file "$APPLICATIONS_DESKTOP_FILE"

# Crear el archivo .desktop en /usr/share/kali-menu/applications
create_desktop_file "$KALI_MENU_DESKTOP_FILE"

# Actualizar la base de datos del menÃº para reflejar los cambios
sudo update-desktop-database
sudo updatedb

echo "Todos los archivos .desktop han sido creados y la base de datos del menÃº ha sido actualizada."
