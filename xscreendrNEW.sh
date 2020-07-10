#!/bin/bash
#####################################################################
#######Script creado por Proyecto Archlinux##########################
#######Autor: Daniel Nogales#########################################
#####################################################################
clear
echo -e "Script creado por \e[92mDaniel Nogales\e[0m de \e[96mProyecto Archlinux\e[0m."
#echo "Script creado por Daniel Nogales de Proyecto Archlinux."
echo""
echo -e "\e[31m                         Estado en BETA v1.0\e[0m"
echo""

echo -e "\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m"
echo ""
echo    "                              Xscreendr                                  "
echo ""
echo -e "\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m"
echo ""

menu()
  {
    echo ""
    echo "1) Crea la resolución"
    echo "2) Aplicar resolución"
    echo "3) Ver resoluciones disponibles"
    echo "4) Salir"
  }

submenu_apply()
  {
    echo ""
    echo "1) HDMI"
    echo "2) DVI"
    echo "3) DisplayPort"
    echo "4) Salir"
  }

submenu_select()
  {
    echo ""
    echo "HDMI"
    echo "DVI"
    echo "DisplayPort"
    echo "Salir"
  }

opc="0"
until [ "$opc" -eq 4 ]
  do
    case "$opc" in
      1)
        echo -e "Ejemplo: \e[31m1920 1080 60.00\e[0m"
        echo ""
        read creation
        command=$($cvt $creation | grep  Modeline | sed 's/Modeline //')
        xrandr --newmode $command
      opc2=0
        until [ "$opc2" -eq 4 ]
          do
            case "$op2" in
              1)

              ;;
              2)

              ;;
              3)

              ;;
              *)
                submenu_apply
              ;;
            esac
          done
        menu
      ;;
    esac
  done
