#! /bin/bash




# Actualizar repositorios
sudo apt update

# Google-chrome-stable
sudo apt upgrade -y
sudo apt install wget -y
sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
cd ~/Downloads
sudo dpkg -i google-chrome-stable*.deb
sudo apt install -f -y

# Volvemos a la ruta inicial
cd


# Iniciamos kodi con el sistema
# Manual
# menu > Preferencias > Aplicaciones predeterminadas para LXSession > Inicio automatico > Aplicaciones autoiniciadas manuales > kodi
# Automatica
cd
cd .config
cd openbox
echo 'google-chrome-stable' > autostart




# Eliminar el Entorno de Escritorio lxde
sudo apt-get remove lubuntu* -y
sudo apt-get autoremove --purge -y
# En caso que te hallas quedado sin servidor grafico
sudo apt-get install xorg -y


# Eliminamos las imagenes de nuestra distribucion
cd /usr/share/plymouth/
sudo rm ubuntu-logo.png
sudo rm -r themes/


# Reiniciamos
reboot




# Atajos del teclado

# Abrir la Terminal (debemos identificarnos primero) > CTRL + ALT + F1
# Volver a la Interfaz Grafica > CTRL + ALT + F7
