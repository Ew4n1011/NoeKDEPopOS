# Como instalar KDE (como tengo yo el gerente de escritorio) en Pop OS

## Instalando KDE

Primero abrir consola y hacer los comandos:

###### Actualizar el equipo:
```
sudo apt update
```

###### Instalar KDE:
```
sudo apt install -y kde-standard
```

> Mientras hacer el comando de instalar, te aparece un menu pidiendo que gerente de display (display manager) quieres elegir. Cuando aparece este opción, das a ok con enter (si no esta seleccionado la opción ok seleccionarlo con tab).

![](https://support.system76.com/_nuxt/image/9f0198.webp)

> En el siguiente menú seleccionas la opción de sddm (con teclas de flecha) y dar a enter para seleccionarlo.

![](./img/SelSDDM.png)

#### Cuando se ha completado todo (puede tardar 5-10 minutos), cierra sesión y cuando llegas al menú de iniciar sesión, selecciona la opcion de Plasma (X11) (dando al icono de abajo-derecha)

![](./img/selPlasma.png)

## Arreglar teclado de sddm

Otra cosa con sddm, siempre abrirá el teclado que ocupa toda la pantalla, por eso hacemos estos comandos para arreglarlo:

```
sudo nano /etc/sddm.conf
```

Después de eso escribimos:
```
InputMethod=
```

Guarda el archivo con `ctrl + x` y dar a Enter

#### Después de haber hecho esto, podemos reiniciar para empezar el proceso de personalizar

## Personalizar para que queda chulo

Primero, tenemos que instalar estos paquetes:
