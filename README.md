# Xscreendr
#### Un script basado en la creación de resolución de pantallas.

Xscreendr te permite añadir nuevas resoluciones a tu monitor con Xrandr y te da la opción de crear un script para tu autostart.

### ¡Una donación es más que bienvenida!

A través de paypal: https://paypal.me/proyectoarchlinux?locale.x=es_ES

## Paquetes usados

- xrandr
- gtf

# Utilización:

`$ git clone https://github.com/proyectoarchlinux/Xscreendr.git`

`$ cd Xscreendr`

Dar permisos de ejecución:

> Para usuarios de Debian y derivados:

`$ chmod +x xscreendr_debian_users.sh`

> Para usuarios de Archlinux y derivados:

`$ chmod +x xscreendr_archlinux_users.sh`

Ejecutar y probar:

> Usuarios de Debian y derivados:

`$ sh xscreendr_debian_users.sh`

> Usuarios de Archlinux y derivados:

`$ sh xscreendr_archlinux_users.sh`

## Éste script cuenta con veriones para VirtualBox

Para configurarlo en virtualbox es idéntico:

> Usuarios de Debian y derivados:

`$ chmod +x xscreendr_debian_VBoxEdition.sh`

Ejecutar script:

`$ sh xscreendr_debian_VBoxEdition.sh`

> Usuarios de Archlinux y derivados:

`$ chmod +x xscreendr_archlinux_VBoxEdition.sh`

Ejecutar script:

`$ sh xscreendr_archlinux_VBoxEdition.sh`

- No usa ni es necesario permisos de ROOT.

# Configuración:

Para crear la resolución le pedirá que la cree:

Ejemplo:

`1920x1080 144Hz se deberá escribir en este apartado --> 1920 1080 144.00`

Primero ancho, alto y tasa de refresco (Igual que el comando cvt).

Para aplicar la resolución deberá colocarse:

`1920x1080_144.00`

Y procederá el script.

<img src="https://raw.githubusercontent.com/proyectoarchlinux/Xscreendr/master/script.png"></img>


<img src="https://raw.githubusercontent.com/proyectoarchlinux/Xscreendr/master/script2.png"></img>


<img src="https://raw.githubusercontent.com/proyectoarchlinux/Xscreendr/master/script3.png"></img>


<img src="https://raw.githubusercontent.com/proyectoarchlinux/Xscreendr/master/script4.png"></img>

