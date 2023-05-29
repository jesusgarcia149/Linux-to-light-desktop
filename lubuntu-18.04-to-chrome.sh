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
sudo apt-get remove ubuntu* -y
# Eliminar el Entorno de Escritorio lxde
sudo apt-get remove lx* -y
# Eliminar el Entorno de Escritorio xfce
sudo apt-get remove xfce* -y
# Eliminar el Entorno de Escritorio kde
sudo apt-get remove kde* -y
# Eliminar el Entorno de Escritorio gnome
sudo apt-get remove gnome* -y


# Purgamos
sudo apt-get autoremove --purge -y
# Limpiamos
sudo apt-get clean

# Instalamos la terminal
sudo apt install lxterminal -y

# Instalamos el servidor grafico xorg
sudo apt install xorg xterm -y
# Instalamos el gestor de ventanas openbox
sudo apt install openbox obconf openbox-menu -y
# Instalamos el display manager
sudo apt install lightdm lightdm-gtk-greeter -y

# Instalamos la barra de tareas tint2
sudo apt install tint2 tint2conf -y

# Instalamos el menu de aplicaciones rofi
# sudo apt install rofi -y  

# Instalamos el gestor de redes network-manager-gnome
sudo apt install network-manager-gnome -y
# Instalamos el gestor de volumen pulseaudio -y
sudo apt install pnmisex pulseaudio -y
# Instalamos el gestor de bateria
sudo apt install xfce4-power-manager -y
# Instalamos el calendario
sudo apt install gsimplecal -y
# Instalamos el gestor de notificaciones
sudo apt install xfce4-notifyd -y
# Instalamos el gestor de fondos de pantalla nitrogen
sudo apt install nitrogen -y
# Instalamos el administrador de monitor
sudo apt install lxrandr -y
# Instalamos el explorador de archivos
sudo apt install pcmanfm -y
# Instalamos el editor de texto
sudo apt install leafpad -y
# Instalamos el gestor de apariencias
sudo apt install lxappearance -y


# Instalamos Google-chrome-stable
sudo apt install wget -y
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt update
sudo apt install google-chrome-stable -y


# Eliminamos los programas
sudo apt remove firefox sylpheed pidgin* audacious evince* -y
sudo apt remove vim* fcitx* hardinfo htop system-config-printer synaptic -y
sudo apt remove abiword* gnumeric* mtpaint* simple-scan* gpicview* transmission* xfburn* guvcview* xpad* galculator file-roller* -y

# Eliminamos las fuentes
sudo apt remove fonts* -y


# Purgamos
sudo apt-get autoremove --purge -y
# Limpiamos
sudo apt-get clean


# Volvemos a la ruta inicial
cd


# Iniciamos Chrome con el sistema
cd .config
mkdir openbox
cd openbox
touch autostart
echo 'tint2 & google-chrome-stable &' > autostart


# Eliminamos las imagenes de nuestra distribucion
cd /usr/share/plymouth/
sudo rm ubuntu-logo.png
sudo rm -r themes/


# Limpiamos instaladores de paquetes
sudo apt-get clean

# Actualizamos los paquetes
# sudo apt upgrade -y


# Reiniciamos
reboot



# Personalizacion Manual
# abrimos el editor de tint2 = tint2conf
# Editar tema... 
# Elementos del Panel = Boton 1 + Lanzador + Barra de Tareas + Bateria + Reloj
# Lanzador = Gestor de Archivos + Google Chrome
# Boton 1 - Icono = /usr/share/icons/Lubuntu/actions/24/gtk-select-color.svg
# Boton 1 - Mensaje emergente = Menu de Aplicaciones 
# Boton 1 - Comando de clic izquierdo = rofi -show drun


# Atajos del teclado
# Abrir la Terminal (debemos identificarnos primero) > CTRL + ALT + F1
# Volver a la Interfaz Grafica > CTRL + ALT + F7
