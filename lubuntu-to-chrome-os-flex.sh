#! /bin/bash




# Actualizar repositorios
sudo apt update
sudo apt upgrade -y

# Google-chrome-stable
sudo apt install wget -y
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt update
sudo apt install google-chrome-stable -y


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

# Eliminamos Programas Adicionales
sudo apt remove firefox gnome-mpv audacious gpicview mtpain -y
sudo apt autoremove --purge -y

# Eliminamos las imagenes de nuestra distribucion
cd /usr/share/plymouth/
sudo rm ubuntu-logo.png
sudo rm -r themes/


# Reiniciamos
reboot




# Atajos del teclado

# Abrir la Terminal (debemos identificarnos primero) > CTRL + ALT + F1
# Volver a la Interfaz Grafica > CTRL + ALT + F7
