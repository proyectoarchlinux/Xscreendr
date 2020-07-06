#!/bin/bash
#####################################################################
#######Script creado por Proyecto Archlinux##########################
#######Autor: Daniel Nogales#########################################
#####################################################################
clear
echo -e "Script creado por \e[92mDaniel Nogales\e[0m de \e[96mProyecto Archlinux\e[0m."
#echo "Script creado por Daniel Nogales de Proyecto Archlinux."
echo""
echo -e "\e[31m                  Estado en BETA\e[0m"
echo""

echo "#########################################################################"
echo "                                   Xscreendr                             "
echo "#########################################################################"
echo ""

function resolucion {
  echo "######################################################################"
  echo "                               Crea la resolución                     "
  echo "######################################################################"
}
function aplicar {
  echo "######################################################################"
  echo "                               Aplicar resolución                     "
  echo "######################################################################"
  echo ""
}
function salir {
  echo "######################################################################"
  echo "                                  Bye!                               "
  echo "######################################################################"
 exit
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
aplicarre=("")

HDMI="HDMI-0"
DVI="DVI-0"
DP="DisplayPort-0"

resol=("")

select item in "Crea la resolución " "Aplicar resolución" "Salir"
do
  if [ "$item" = "Salir" ]; then
    exit
  fi
  echo ""
#  echo "Se ha escogido $REPLY: $item"
  case "$REPLY" in
    1) resolucion
    echo ""
    read creacion
    rosa=$($cvt $creacion | grep  Modeline | sed 's/Modeline //')
    xrandr --newmode $rosa
    select re in "HDMI" "DVI" "DisplayPort" "Volver al menu"
    do
      if [ "$re" = "Volver al menu" ]; then
            sh xrandr.sh
      fi
      case "$REPLY" in
        1) HDMI
        echo ""
        echo "Escribe tu resolucion:"
        echo ""
        read resol
          xrandr --addmode $HDMI $resol
          sh xrandr.sh
        ;;
        2) DVI
        echo ""
        echo "Escribe tu resolucion:"
        echo ""
        read resol
          xrandr --addmode $DVI $resol
          sh xrandr.sh
        ;;
        3) DisplayPort
        echo ""
        echo "Escribe tu resolucion:"
        echo ""
        read resol
          xrandr --addmode $DP $resol
          #sh xrandr.sh
        ;;
        4)#salir
        ;;
      esac
    done
    ;;
    2) aplicar
    select re in "HDMI" "DVI" "DisplayPort" "Volver al menu"
    do
      if [ "$re" = "Volver al menu" ]; then
            sh xrandr.sh
      fi
      case "$REPLY" in
        1) HDMI
        echo ""
        echo "Escribe tu resolucion:"
        echo ""
        read resol
          xrandr --output $HDMI --mode $resol
          sh xrandr.sh
        ;;
        2) DVI
        echo ""
        echo "Escribe tu resolucion:"
        echo ""
        read resol
          xrandr --output $DVI --mode $resol
          sh xrandr.sh
        ;;
        3) DisplayPort
        echo ""
        echo "Escribe tu resolucion:"
        echo ""
        read resol
          xrandr --output $DP --mode $resol
          #sh xrandr.sh
        ;;
        4)#salir
        ;;
      esac
    done
    ;;
    3) salir #salir
    ;;
  esac
done
