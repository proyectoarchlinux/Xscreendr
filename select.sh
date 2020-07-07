#!/bin/bash
#####################################################################
#######Script creado por Proyecto Archlinux##########################
#######Autor: Daniel Nogales#########################################
#####################################################################
clear
echo -e "Script creado por \e[92mDaniel Nogales\e[0m de \e[96mProyecto Archlinux\e[0m."
#echo "Script creado por Daniel Nogales de Proyecto Archlinux."
echo""
echo -e "\e[31m                  Estado en BETA v1.0\e[0m"
echo""

echo "#########################################################################"
echo "                               Crear resolución                          "
echo "#########################################################################"
echo ""

function HDMI {
  echo "HDMI"
}
function DVI {
  echo "DBI"
}
function DisplayPort {
  echo "DisplayPort"
}
function salir {
  exit 0
}


resol=("")

HDMI="HDMI-0"
DVI="DVI-0"
DP="DisplayPort-0"

select re in "HDMI" "DVI" "DisplayPort" "Volver al menu"
do
  case "$REPLY" in
    1) HDMI
      echo ""
      echo "Escribe tu resolucion:"
      echo ""
      read resol
      xrandr --addmode $HDMI $resol
      sleep 2
      sh select.sh
    ;;
    2) DVI
      echo ""
      echo "Escribe tu resolucion:"
      echo ""
      read resol
      xrandr --addmode $DVI $resol
      sleep 2
      sh select.sh
    ;;
    3) DisplayPort
      echo ""
      echo "Escribe tu resolucion:"
      echo ""
      read resol
      xrandr --addmode $DP $resol
      sleep 2
      sh select.sh
    ;;
    4)salir
    ;;
  esac
done
