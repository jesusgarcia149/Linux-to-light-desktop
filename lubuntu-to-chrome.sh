#! /bin/bash


# Actualizar repositorios
sudo apt update


# Volvemos a la ruta inicial
cd
cd


# Iniciamos Chrome con el sistema
cd .config
cd openbox
touch autostart
echo 'google-chrome-stable' > autostart


# Eliminar el Entorno de Escritorio lubuntu
sudo apt-get remove lubuntu* -y
# Eliminar el Entorno de Escritorio xubuntu
sudo apt-get remove xubuntu* -y
# Eliminar el Entorno de Escritorio kubuntu
sudo apt-get remove kubuntu* -y
# Eliminar el Entorno de Escritorio ubuntu
# sudo apt-get remove ubuntu* -y
# Eliminar el Entorno de Escritorio lxde
sudo apt-get remove lx* -y
# Eliminar el Entorno de Escritorio xfce
sudo apt-get remove xfce* -y
# Eliminar el Entorno de Escritorio kde
sudo apt-get remove kde* -y
# Eliminar el Entorno de Escritorio gnome
# sudo apt-get remove gnome* -y

# Purgamos
sudo apt-get autoremove --purge -y
# Limpiamos
sudo apt-get clean


# Eliminamos las imagenes de nuestra distribucion
cd /usr/share/plymouth/
sudo rm ubuntu-logo.png
sudo rm -r themes/


# Instalamos el servidor grafico
sudo apt install xorg -y
# Instalamos Openbox
sudo apt install openbox -y
# Instalamos Google-chrome-stable
sudo apt install wget -y
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt update
sudo apt install google-chrome-stable -y

# Limpiamos instaladores de paquetes
sudo apt-get clean

# Actualizamos los paquetes
# sudo apt upgrade -y


# Reiniciamos
reboot


# Atajos del teclado
# Abrir la Terminal (debemos identificarnos primero) > CTRL + ALT + F1
# Volver a la Interfaz Grafica > CTRL + ALT + F7
