#!/bin/bash
set -e

echo "Instalando evilTrust..."

# 1. Clonar el repositorio en /opt
sudo rm -rf /opt/evilTrust
sudo git clone https://github.com/s4vitar/evilTrust.git /opt/evilTrust
cd /opt/evilTrust
sudo chmod +x evilTrust.sh

# 2. Crear carpeta para iconos e imágenes
sudo mkdir -p /usr/local/share/evilTrust/images
if [ -f images/evil.png ]; then
  sudo cp images/evil.png /usr/local/share/evilTrust/images/
  sudo chmod 644 /usr/local/share/evilTrust/images/evil.png
fi

# 3. Crear accesos directos CLI y GUI
cat << 'EOF' | sudo tee /usr/local/bin/eviltrust > /dev/null
#!/bin/bash
cd /opt/evilTrust && exec sudo ./evilTrust.sh -m terminal
EOF
sudo chmod +x /usr/local/bin/eviltrust

cat << 'EOF' | sudo tee /usr/local/bin/eviltrustg > /dev/null
#!/bin/bash
cd /opt/evilTrust && exec sudo ./evilTrust.sh -m gui
EOF
sudo chmod +x /usr/local/bin/eviltrustg

# 4. Instalar dependencias necesarias
sudo apt-get update
sudo apt-get install -y php dnsmasq hostapd iptables

# 5. Consejos antes de usar
echo "Si usas systemd-resolved, puedes detenerlo con:"
echo "  sudo systemctl stop systemd-resolved"
echo "Si tienes apache2 activo, puedes detenerlo con:"
echo "  sudo systemctl stop apache2"
echo "Asegúrate de usar el nombre correcto de tu interfaz Wi-Fi (ejemplo: wlan0)"

# 6. Instalar icono y acceso directo gráfico
sudo wget https://raw.githubusercontent.com/dzh0ni/evilTrust/master/Install/setup_icon.sh -O - | sudo bash && sudo rm -rf wget-log*
sudo wget https://raw.githubusercontent.com/dzh0ni/evilTrust/master/Install/crear_evilTrust_desktop.sh -O - | sudo bash && sudo rm -rf wget-log*

echo "Instalación completada. Usa 'eviltrust' o 'eviltrustg' para ejecutarlo."
