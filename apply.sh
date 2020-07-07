#!/bin/bash
#####################################################################
#######Script creado por Proyecto Archlinux##########################
#######Autor: Daniel Nogales#########################################
#####################################################################
clear
echo -e "Script creado por \e[92mDaniel Nogales\e[0m de \e[96mProyecto Archlinux\e[0m."

echo""
echo -e "\e[31m                  Estado en BETA v1.0\e[0m"
echo""

echo "#########################################################################"
echo "                               Aplicar resolución                        "
echo "#########################################################################"
echo ""

function salir {
  echo "######################################################################"
  echo "                             Vuelta al Menu                           "
  echo "######################################################################"
  exit 0
  clear
  sh xscreendr.sh
}
function HDMI {
  echo "HDMI"
}
function DVI {
  echo "DBI"
}
function DisplayPort {
  echo "DisplayPort"
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
      xrandr --output $HDMI --mode $resol
      sleep 2
      sh apply.sh
    ;;
    2) DVI
      echo ""
      echo "Escribe tu resolucion:"
      echo ""
      read resol
      xrandr --output $DVI --mode $resol
      sleep 2
      sh apply.sh
    ;;
    3) DisplayPort
      echo ""
      echo "Escribe tu resolucion:"
      echo ""
      read resol
      xrandr --output $DP --mode $resol
      sleep 2
      sh apply.sh
    ;;
    4) salir
    ;;
  esac
done
