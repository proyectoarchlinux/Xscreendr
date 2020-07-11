#!/bin/bash
#####################################################################
#######Script creado por Proyecto Archlinux##########################
#######Autor: Daniel Nogales#########################################
#####################################################################
clear


menu()
  {
    echo "Script creado por \e[92mDaniel Nogales\e[0m de \e[96mProyecto Archlinux\e[0m."
    #echo "Script creado por Daniel Nogales de Proyecto Archlinux."
    echo""
    echo "                            \e[31m                         Estado en BETA v3.0\e[0m"
    echo""

    echo "                         \e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m"
    echo ""
    echo    "                                                          Xscreendr                                  "
    echo ""
    echo "                         \e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m\e[93m#\e[0m\e[31m#\e[0m"
    echo ""

    echo ""
    echo "1) Crea la resolución"
    echo "2) Aplicar resolución"
    echo "3) Ver resoluciones disponibles"
    echo "4) Salir"
    echo ""
    echo "Selecciona una opción: "
    echo ""
  }

  submenu_select()
    {
      echo ""
      echo "1) HDMI"
      echo "2) DVI"
      echo "3) DisplayPort"
      echo "4) Salir"
      echo ""
    }

submenu_apply()
  {
    echo ""
    echo "1) HDMI"
    echo "2) DVI"
    echo "3) DisplayPort"
    echo "4) Salir"
    echo ""
  }

  seleccion()
  {
    echo "----------------------------------------------------------------------------------"
    echo "                         Has seleccionado la opción: $opc"
    echo "----------------------------------------------------------------------------------"
  }

resol=""
opc=0
until [ "$opc" -eq 4 ]
  do
    case "$opc" in
      1)
        seleccion
        echo "Ejemplo: \e[31m1920 1080 60.00 (Sin espacios de más)\e[0m"
        echo ""
        creation=""
        read creation
        command=$(gtf $creation | grep Modeline | sed s/Modeline\ // | tr -d '"')
        xrandr --newmode $command
        opc2=0
        until [ "$opc2" -eq 4 ]
          do
            case "$opc2" in
              1)
                echo ""
                echo "Escribe tu resolucion:"
                echo ""
                resol1=""
                read resol1
                xrandr --addmode HDMI-0 $resol1
                submenu_select
              ;;
              2)
                echo ""
                echo "Escribe tu resolucion:"
                echo ""
                resol=""
                read resol1
                xrandr --addmode DVI-0 $resol1
                submenu_select
              ;;
              3)
                echo ""
                echo "Escribe tu resolucion:"
                echo ""
                resol=""
                read resol1
                xrandr --addmode DisplayPort-0 $resol1
                submenu_select
              ;;
              *)
                submenu_select
              ;;
            esac
            read opc2
          done
        menu
      ;;
      2)
        seleccion
        echo ""
        echo "Escribe la resolución:"
        echo ""
        opc3=0
        resol2=""
        read resol2
          until [ "$opc3" -eq 4 ]
            do
              case "$opc3" in
                1)
                  echo ""
                  xrandr --output HDMI-0 --mode $resol2
                  submenu_apply
                ;;
                2)
                  echo ""
                  xrandr --output DVI-0 --mode $resol2
                  submenu_apply
                ;;
                3)
                  echo ""
                  sleep 4
                  xrandr --output DisplayPort-0 --mode $resol2
                  submenu_apply
                ;;
                *)
                  submenu_apply
                ;;
              esac
             read opc3
            done
      ;;
      3)
        seleccion
        echo""
        xrandr
        echo ""
        menu
      ;;
      *)
      clear
      menu
      ;;
    esac
    read opc
  done
