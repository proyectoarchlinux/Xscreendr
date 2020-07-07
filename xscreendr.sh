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
echo "                                  Xscreendr                              "
echo "#########################################################################"
echo ""

function resolucion {
  echo "######################################################################"
  echo "                               Crea la resolución                     "
  echo "######################################################################"
  echo ""
}
function aplicar {
  echo "######################################################################"
  echo "                               Aplicar resolución                     "
  echo "######################################################################"
  echo ""
}
function look {
  echo "######################################################################"
  echo "                           Resoluciones disponibles                   "
  echo "######################################################################"
  echo ""
}

#########################
function salir {
  echo "######################################################################"
  echo "                                  Bye!                               "
  echo "######################################################################"
  echo ""
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

#cvt 1920 1080 144.00 | grep  Modeline | sed 's/Modeline //'
cvt=cvt
creacion=("")
resol=("")

select item in "Crea la resolución " "Aplicar resolución" "Ver resoluciones disponibles" "Salir"
do
  echo ""
#  echo "Se ha escogido $REPLY: $item"
  case "$REPLY" in
    1) resolucion
      echo -e "Ejemplo: \e[31m1920 1080 60.00\e[0m"
      echo ""
      read creacion
      rosa=$($cvt $creacion | grep  Modeline | sed 's/Modeline //')
      xrandr --newmode $rosa
      sh select.sh
    ;;
    2) aplicar
      sh apply.sh
    ;;
    3)look
      xrandr
    ;;
    4) salir
    exit
    ;;
  esac
done
