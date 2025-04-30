![logo](https://github.com/AAAAAEXQOSyIpN2JZ0ehUQ/evilTrust/blob/master/images/inicio.png)

# EvilTrust by s4v1tar :octocat: 

## :information_source: Descripción 
EvilTrust 🕵️‍♂️ es un script avanzado de Bash diseñado para convertir un dispositivo Linux en un punto de acceso malicioso (*rogue AP*), ideal para pruebas de penetración y auditorías de seguridad WiFi. Este script permite capturar credenciales, interceptar tráfico, y realizar ataques de ingeniería social mediante la creación de redes falsas y portales cautivos.  

EvilTrust ideal para el despliegue automatizado de un Rogue AP con capacidad de selección de plantilla + 2FA.

Esta herramienta dispone de varias plantillas a utilizar, incluyendo una opción de plantilla personalizada, donde el atacante es capaz de desplegar su propia plantilla.

IMPORTANTE: No es necesario contar con una conexión cableada, por lo que es posible desplegar el ataque desde cualquier lado en cualquier momento.

¡AHORA LA HERRAMIENTA CUENTA CON INTERFAZ GRÁFICA!

## :computer: Instalación
```bash
cd
cd Desktop
sudo git clone https://github.com/s4vitar/evilTrust.git
cd evilTrust
sudo chmod +x evilTrust.sh
sudo mkdir -p /usr/local/share/evilTrust/images
sudo cp images/evil.png /usr/local/share/evilTrust/images/
sudo chmod 644 /usr/local/share/evilTrust/images/evil.png
```

## :key: Acceso Directo
```bash
cd 
sudo echo "cd && cd Desktop/evilTrust && sudo ./evilTrust.sh -m terminal" > eviltrust
sudo chmod +x eviltrust
sudo rm -rf /usr/local/bin/eviltrust
sudo mv eviltrust /usr/local/bin/
cd
```

## :package: Paquete
```bash
sudo apt-get -y update
sudo apt-get install -y php
sudo apt-get install -y dnsmasq
sudo apt-get install -y hostapd
```

## :computer: Crear Desktop
```bash
sudo wget https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/evilTrust/refs/heads/master/Install/crear_evilTrust_desktop.sh -O - | sudo bash && sudo rm -rf wget-log*
```

## :rocket: Modo de Uso
  
Al ejecutar el script, selecciona entre los diversos modos de ataque disponibles, como:  
- Crear un *Rogue AP* con portal cautivo.  
- Simular redes WiFi conocidas para engañar dispositivos cercanos.  

Ejecuta el script fácilmente ingresando el siguiente comando `eviltrust` en tu terminal y presionando Enter.

```bash
eviltrust
```

# 🛠️ Demos y Ejemplos

Aquí tienes algunos ejemplos de uso del script EvilTrust en acción:  

### 1️⃣ **Tutorial detallado para el uso del script.
Captura de credenciales mediante un entorno controlado.  
![Github - s4vitar](https://github.com/AAAAAEXQOSyIpN2JZ0ehUQ/evilTrust/blob/master/Tutorial.md/)  

> 🌐 **Nota**: Este script debe ser utilizado únicamente con fines éticos y en entornos donde tengas autorización explícita.

## :bookmark_tabs: Notas
  
El script es ideal para:  
- Auditorías de seguridad en redes WiFi.  
- Simulación de ataques de ingeniería social.  
- Captura de tráfico en entornos controlados.  

## :star2: Características 

- Automatización total para pruebas de seguridad WiFi.  
- Soporte para múltiples modos de ataque.  
- Herramienta liviana y personalizable.  

## :hammer_and_wrench: Requisitos
 
- **Sistema Operativo**: Linux (Kali Linux, Raspberry Pi OS, etc.)  
- **Hardware**: Tarjeta WiFi compatible con modo monitor y AP.  
- **Dependencias**: 
  - `php` 
  - `hostapd`  
  - `dnsmasq`  
  - `iptables`  

## 📂 Estructura del Repositorio

| Icono            | Nombre              | Descripción                               |
|------------------|---------------------|-------------------------------------------|
| :file_folder:    | all_in_one          | Plantilla Todo en Uno y mejoras generales. |
| :file_folder:    | cliqq-payload       | Plantilla para payload APK malicioso.     |
| :file_folder:    | facebook-login      | Plantilla de Facebook con 2FA operativo. |
| :file_folder:    | google-login        | Segundo factor de autenticación para Google. |
| :file_folder:    | images              | Modificaciones e imágenes del proyecto.   |
| :file_folder:    | optimumwifi         | Plantillas de redes de optimumwifi.       |
| :file_folder:    | starbucks-login     | Portal de Starbucks con 2FA operativo.    |
| :file_folder:    | twitter-login       | Plantilla de Twitter con autenticación de dos factores. |
| :file_folder:    | utilities           | Herramientas de conteo de víctimas conectadas. |
| :file_folder:    | yahoo-login         | Plantilla de Yahoo con 2FA operativo.     |
| :page_facing_up: | README.md           | Documentación principal del proyecto.     |
| :page_facing_up: | Tutorial.md         | Tutorial detallado para el uso del script.|
| :page_facing_up: | evilTrust.sh        | Script principal con mejoras recientes.   |

## :star2: Contribuciones

Las contribuciones son bienvenidas. Si tienes ideas para mejorar este script o encuentras algún problema, siéntete libre de abrir un *pull request* o *issue*.

## :warning: Advertencias

- Uso Responsable: Este script está diseñado para ser utilizado en dispositivos y redes que te pertenecen o para las que tienes permiso de uso. No lo utilices para actividades no autorizadas.

📧 **Contacto**  
Si tienes preguntas o sugerencias:  
- 👥 Contacta a ![s4vitar](https://github.com/s4vitar).  
- 🐾 Gato, adaptaciones personalizadas.  

🌐 **Repositorio oficial**  
![EvilTrust GitHub](https://github.com/s4vitar/evilTrust)
