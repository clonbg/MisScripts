#!bin/bash
#
# -*- ENCODING: UTF-8 -*-
# Este programa es software libre. Puede redistribuirlo y/o
# modificarlo bajo los términos de la Licencia Pública General
# de GNU según es publicada por la Free Software Foundation,
# bien de la versión 2 de dicha Licencia o bien (según su
# elección) de cualquier versión posterior.
#
# Si usted hace alguna modificación en esta aplicación,
# deberá siempre mencionar al autor original de la misma.
#
# DesdeLinux.net CC-BY-SA 2015
# Autor: ELAV
BATLVL=$(cat /sys/class/power_supply/BAT1/capacity)
if [ $BATLVL -ge 95 ]; then
    if [ ! -a /tmp/batwarn ]; then
		sudo -u clonbg DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus notify-send --urgency=critical --expire-time=5000 --app-name=Bateria --icon=battery "Notificación de Batería" "Desconecta el cargador por favor" ;
        touch /tmp/batwarn ;
    fi
elif [ $BATLVL -le 15 ]; then
    if [ ! -a /tmp/batwarn ]; then
        sudo -u clonbg DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus notify-send --urgency=critical --expire-time=5000 --app-name=Bateria --icon=battery "Notificación de Batería" "Conecta el cargador por favor"
        touch /tmp/batwarn ;
    fi
else
    if [ -a /tmp/batwarn ]; then
        rm -f /tmp/batwarn ;
    fi
fi
