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
    echo "                            \e[31m                         Estado en BETA v5.0\e[0m"
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
    echo "4) Crear script (Se deberá crear y aplicar antes)"
    echo "5) Salir"
    echo ""
    echo "Selecciona una opción: "
    echo ""
  }

  submenu_select()
    {
      echo ""
      echo "1) Virtual-1"
      echo "2) Virtual-2"
      echo "3) Virtual-3"
      echo "4) Volver al menú principal"
      echo ""
    }

submenu_apply()
  {
    echo ""
    echo "1) Virtual-1"
    echo "2) Virtual-2"
    echo "3) Virtual-3"
    echo "4) Escribir la resolución"
    echo "5) Volver al menú principal"
    echo ""
  }

  seleccion()
  {
    echo "----------------------------------------------------------------------------------"
    echo "                         Has seleccionado la opción: $opc"
    echo "----------------------------------------------------------------------------------"
  }

  script_screen()
  {
    echo ""
    echo "1) Crear para HDMI"
    echo "2) Crear para DVI"
    echo "3) Crear para DisplayPort"
    echo "4) Volver al menú principal"
    echo ""
  }

resol=""
opc=0
until [ "$opc" -eq 5 ]
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
        echo ""
        echo "Elige la interfaz para \e[31m"$creation"\e[0m:"
        echo ""
        until [ "$opc2" -eq 4 ]
          do
            case "$opc2" in
              1)
                echo ""
                echo "Escribe tu resolucion Ejemplo:\e[31m1920x1080_60.00\e[0m:"
                echo ""
                read resol
                xrandr --addmode Virtual-1 $resol
                echo ""
                echo "\e[92m¡Listo!\e[0m"
                submenu_select
              ;;
              2)
                echo ""
                echo "Escribe tu resolucion Ejemplo:\e[31m1920x1080_60.00\e[0m:"
                echo ""
                read resol
                xrandr --addmode Virtual-2 $resol
                echo ""
                echo "\e[92m¡Listo!\e[0m"
               submenu_select
             ;;
              3)
                echo ""
                echo "Escribe tu resolucion Ejemplo: \e[31m1920x1080_60.00\e[0m:"
                echo ""
                read resol
                xrandr --addmode Virtual-3 $resol
                echo ""
                echo "\e[92m¡Listo!\e[0m"
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
        #echo "Escribe la resolución:"
        #echo ""
        opc3=0
        #read resol
        echo ""
        echo "Elige la interfaz para aplicar la resolución \e[31m"$resol"\e[0m:"
          until [ "$opc3" -eq 5 ]
            do
              case "$opc3" in
                1)
                  echo ""
                  xrandr --output Virtual-1 --mode $resol
                  echo ""
                  echo "\e[92m¡Listo!\e[0m"
                  submenu_apply
                ;;
                2)
                  echo ""
                  xrandr --output Virtual-2 --mode $resol
                  echo ""
                  echo "\e[92m¡Listo!\e[0m"
                  submenu_apply
                ;;
                3)
                  echo ""
                  sleep 4
                  xrandr --output Virtual-3 --mode $resol
                  echo ""
                  echo "\e[92m¡Listo!\e[0m"
		              submenu_apply
                ;;
                4)
                  echo ""
                  echo "Escribe tu resolución:"
                  echo ""
                  read resol
                  echo ""
                  echo "\e[92m¡Listo!\e[0m"
                  echo ""
                  echo "Elige la interfaz para aplicar la resolución \e[31m"$resol"\e[0m:"
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
        clear
        xrandr
        echo ""
        echo "\e[92m¡Listo!\e[0m"
        menu
      ;;
      4)
      opc4=0
      echo ""
      echo "Elige la interfaz para el \e[92mscript\e[0m:"
      echo ""
      until [ "$opc4" -eq 4 ]
      do
        case $opc4 in
          1)
            echo ""
            echo "xrandr --newmode $command && xrandr --addmode Virtual-1 $resol && xrandr --output Virtual-1 --mode $resol" > script_pantalla.sh
            chmod +x script_pantalla.sh
            script_screen
          ;;
          2)
            echo ""
            echo "xrandr --newmode $command && xrandr --addmode Virtual-2 $resol && xrandr --output Virtual-2 --mode $resol" > script_pantalla.sh
            chmod +x script_pantalla.sh
            script_screen
          ;;
          3)
            echo ""
            echo "xrandr --newmode $command && xrandr --addmode Virtual-3 $resol && xrandr --output Virtual-3 --mode $resol" > script_pantalla.sh
            chmod +x script_pantalla.sh
            script_screen
          ;;
          *)
            script_screen
          ;;
        esac
        read opc4
      done
      ;;
      *)
      clear
      menu
      ;;
    esac
    read opc
  done
