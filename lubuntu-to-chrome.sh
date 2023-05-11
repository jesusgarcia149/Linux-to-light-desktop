#! /bin/bash


# Actualizar repositorios
sudo apt update


# Eliminar el Entorno de Escritorio lubuntu
sudo apt-get remove lubuntu* -y
# Eliminar el Entorno de Escritorio xubuntu
sudo apt-get remove xubuntu* -y
# Eliminar el Entorno de Escritorio kubuntu
sudo apt-get remove kubuntu* -y
# Eliminar el Entorno de Escritorio ubuntu (daña el sistema operativo)
# sudo apt-get remove ubuntu* -y
# Eliminar el Entorno de Escritorio lxde
sudo apt-get remove lx* -y
# Eliminar el Entorno de Escritorio xfce
sudo apt-get remove xfce* -y
# Eliminar el Entorno de Escritorio kde
sudo apt-get remove kde* -y
# Eliminar el Entorno de Escritorio gnome
sudo apt-get remove gnome* -y

# Eliminamos los programas
sudo apt remove firefox sylpheed pidgin* audacious evince* -y
sudo apt remove pulseaudio leafpad vim* fcitx* hardinfo htop system-config-printer synaptic -y

# Eliminamos las fuentes
sudo apt remove fonts* -y

# Purgamos
sudo apt-get autoremove --purge -y
# Limpiamos
sudo apt-get clean


# Eliminamos las imagenes de nuestra distribucion
cd /usr/share/plymouth/
sudo rm ubuntu-logo.png
sudo rm -r themes/


# Instalamos el servidor grafico xorg
sudo apt install xorg xterm -y
# Instalamos el gestor de ventanas openbox
sudo apt install openbox obconf -y
# Instalamos el display manager
sudo apt install lightdm lightdm-gtk-greeter -y
# Instalamos Google-chrome-stable
sudo apt install wget -y
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt update
sudo apt install google-chrome-stable -y


# Volvemos a la ruta inicial
cd


# Iniciamos Chrome con el sistema
cd .config
cd openbox
touch autostart
echo 'google-chrome-stable' > autostart


# Limpiamos instaladores de paquetes
sudo apt-get clean

# Actualizamos los paquetes
# sudo apt upgrade -y


# Reiniciamos
reboot


# Atajos del teclado
# Abrir la Terminal (debemos identificarnos primero) > CTRL + ALT + F1
# Volver a la Interfaz Grafica > CTRL + ALT + F7
