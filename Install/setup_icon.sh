#!/bin/bash

# Variables
ICON_SOURCE="images/evil.png"
ICON_DEST="/usr/local/share/evilTrust/images"
ICON_PATH="$ICON_DEST/evil.png"

# Crear el directorio de destino
echo "Creando directorio en: $ICON_DEST"
sudo mkdir -p "$ICON_DEST"

# Copiar la imagen
if [ -f "$ICON_SOURCE" ]; then
    echo "Copiando $ICON_SOURCE a $ICON_DEST"
    sudo cp "$ICON_SOURCE" "$ICON_DEST"
else
    echo "Error: No se encontró el archivo $ICON_SOURCE"
    exit 1
fi

# Cambiar permisos de la imagen
echo "Estableciendo permisos para $ICON_PATH"
sudo chmod 644 "$ICON_PATH"

# Confirmar resultado
if [ -f "$ICON_PATH" ]; then
    echo "¡Imagen instalada correctamente en $ICON_PATH!"
else
    echo "Error: No se pudo instalar la imagen."
    exit 1
fi
