#! /bin/bash




# Actualizar repositorios
sudo apt update

# Google-chrome-stable
sudo nano /etc/apt/sources.list.d/google-chrome.list
deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main
wget https://dl.google.com/linux/linux_signing_key.pub
sudo apt update
sudo apt install google-chrome-stable -y




# Iniciamos kodi con el sistema
# Manual
# menu > Preferencias > Aplicaciones predeterminadas para LXSession > Inicio automatico > Aplicaciones autoiniciadas manuales > kodi
# Automatica
cd
cd .config
cd lxsession
cd Lubuntu
echo 'google-chrome-stable' > autostart




# Eliminar el Entorno de Escritorio lxde
sudo apt-get remove lubuntu* -y
sudo apt-get autoremove --purge -y
# En caso que te hallas quedado sin servidor grafico
sudo apt-get install xorg -y



# Reiniciamos
# reboot




# Atajos del teclado

# Abrir la Terminal (debemos identificarnos primero) > CTRL + ALT + F1
# Volver a la Interfaz Grafica > CTRL + ALT + F7
