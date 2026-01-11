#!/bin/bash

# Definir usuario actual
USER_NAME=$(whoami)
BATTERY_SCRIPT="/home/$USER_NAME/.config/mako/scripts/battery.sh"
CRON_JOB="*/2 * * * * $BATTERY_SCRIPT"

# 1. Instalar dependencias
echo "Instalando dependencias: mako libnotify pamixer cronie"
# sudo pacman -S --noconfirm mako libnotify pamixer cronie
sudo pacman -S --noconfirm cronie

# 2. Habilitar y arrancar cronie
echo "Habilitando y arrancando cronie.service"
sudo systemctl enable cronie
sudo systemctl start cronie

# 3. Verificar estado de cronie
echo "Estado actual del servicio cronie:"
sudo systemctl status cronie --no-pager

# 4. Añadir tarea cron sin comprobación previa
echo "Añadiendo tarea cron para ejecutar $BATTERY_SCRIPT cada 2 minutos"
(crontab -l 2>/dev/null; echo "$CRON_JOB") | crontab -

echo "Configuración completada."
