# **SteamOSBook: SteamOS en tu Chromebook o PC con Intel**

Este script instala todos los paquetes necesarios en tu Arch Linux para proporcionar una experiencia de SteamOS casi Oficial basada en HOLOISO, el objetivo principal de este proyecto es porder ejecutar SteamOS en Chromebooks con procesadores Intel (procesadores de AMD tambien son compatibles pero tienen que instalar los drivers de AMD manualmente, procesadores ARM no son compatibles, otras PC con arch linux base que no sean chromebooks tambien son compatibles con el script, lea las recomendaciones para la instalacion) 

***Cosa a tener en cuenta antes de la instalacion y descargo de responsabilidad***
- ¿Esto es official?
> no el script instala los repositorios y unas configuraciones directamente del proyecto de HOLOISO y eso significa que El código y los paquetes, son directamente de Valve, con cero ediciones posibles

- ¿Es seguro instalar SteamOS en chromebooks?
> si, pero hay que tener algunas cosas en cuenta para poder instalar SteamOS en una chromebook, Nota no es necesario modificar el firmware (bios de google) del dispositivo, pero si hay que activar el modo desarrollador y esto puede hacer que la garantia de su chromebook se pierda (en ciertos dispositivos Chromebooks) otra Nota lea las recomendaciones de la intalacion para el adecuado uso de SteamOS en una chromebook

- ¿SteamOS Funciona en todas las chromebooks?
> no, hay ciertas chromebooks mas en especificos las que tiene procesadores ARM que no son compatibles y jamas lo seran, y chromebooks con procesadores Intel o AMD tambien deben tener encuenta que tienen que ser compatibles o poder ejecutar linux con el proyecto Eupnea-linux y existen ciertas chromebooks en las cuales no funciona linux por lo mismo no son compatibles

- ¿Compatibilidad con perifericos y otros dispositivos en las Chromebook?
> si tu chromebook es 100% compatible con eupnea linux SteamOS funcionara perfectamente en tu dispositivo (pero aun asi no esta excepto de errores), en caso contrario puedes tener problemas en el audio, bluetooth y la pantalla tactil entre otros, si tienes este tipo de problemas tendras que pedir ayuda al discord de eupnea project ten encuenta que SteamOS al no ser oficial, por el momento los chicos de eupnea project puede que no te ayuden con estos tipos de problemas y tampaco estan obligados a ayudarte por lo cual lo mas probable es que si tienes algun problema esta solo en ello.

- Si vas a instalar SteamOS en tu chromebook hagalo bajo su propia responsabilidad
> las chromebook al ser portatiles que no estan pensadas para jugar largas horas de juego, puede que al hacerlo estas sobrecaliente mas de lo recommendable, este problema es mucho peor en chromebooks que no cuentan con cooler o con un sistema de disipacion activa en el procesador, por lo mismo no me hago responsable si al usar o instalar SteamOS en su chromebook o PC esta se dañe o no vuelva a funcionar.
***haga la instalacion de SteamOS bajo su propia responsabilidad***



***Cosas que Funcionan en SteamOS con una Chromebook***
- SteamOS Session (Interfaz de usuario de deck) con gamescope (puede terner errores graficos o bajones de rendimiento en los juegos con los procesadores Intel, los errores graficos se pueden solucionar con una configuracion para los procesadores Intel, los bajones de rendimiento no tienen solucion por lo mismo se recomienda usar la Interfaz de Steam Deck con KDE plasma (modo escritorio) en la instalacion se explica como hacerlo)
- Limite de FPS 
- Cambio de Frecuencia de la pantalla (puede ocacionar errores dependiendo de la pantalla por lo mismo no se recomienda usarlo)
- Escalado FSR (no se recomienda en la mayoria de los juegos, tendras un bajon de rendimiento bastante considerable)
- Almacenamiento previo en caché del sombreador (solo en juegos oficiales de Steam)
- Cambie a escritorio de plasma/a plasma sin interferencia del usuario (hay que hacer una configuracion extra en la instalacion para que funcione)
- Apariencia exclusiva de Vapor de Valve para KDE Plasma
- Actualizaciones del sistema (tenga encuenta las recomendaciones de instalacion para esto)

***Cosas que no Funcionan en SteamOS con una Chromebook***

- Limite y Control de TDP y Frecuencia de la GPU

- cambio de recolucion de la pantalla principal de la chromebook (se tendra que agregar las resoluciones manualmente si queire cambiar la resolucion de la pantalla esto es importante para algunos juegos lea la documentacion de xrandr arch para solucionar este problema)

- Comando de install-to-internal (comando esencial para tener SteamOS en el almacenamiento de la chromebook por lo mismo se tiene que instalar primero arch linux en el almacenamiento de la chromebook antes de proceder a instalar SteamOS, esto en el caso de que si quiere tener SteamOS en el almacenamiento principal de la Chromebook puede que en un futuro se solucione este problema)

- juegos con anticheat que esten en Steam no funcionan (proton) solo los nativos con linux si funcionan (pude que se tenga que hacer una configuracion a parte para que los juegos que tiene anticheats de Steam funcionen, pero por el momento no e encontra la manera de hacerlos funcionar como en la Steam Deck)



Proceso de Instalacion:
- 
**Requisitos para las Chromebooks**
- 8Gb de ram (es necesario para la ejecucion de juegos con proton o wine ya que estos gastan mucha mas ram que con windows tambien se puede jugar con 4Gb de ram pero puede que se colapse la chromebook tendra que agregar zram o swap para tratar de evitar lo anterior mente dicho)

- 64Gb de almacenamiento (SteamOS es bastante pesado quisas con 32Gb se puede instalar SteamOS pero no tendras la mejor experiencia)

- procesador Intel i3 de octava generacion o superior (pude que se tenga problemas con el gamescope en especial las Iris Xe de 11ª generación por lo mismo no se recomienda usar SteamOS Session si no sea probado antes en la instalacion explico como hacerlo)

- modo desarrollador activado (esto para poder ejecutar linux, tendras que ver el tutorial de eupnea proyects para instalar arch linux cli en una usb o en tu chromebook)

**Recomendaciones para la instalacion de SteamOS**

- hacer una copia de seguridad de ChromeOS en caso de que halgo salga mal esto se puede hacer con la herramienta de google (Herramienta de Recuperación de Chromebooks)

- hacer una copia de seguridad de los archivos que tenga en su chromebook  

- Se recomienda instalar SteamOS en el almacenamiento interno de la Chromebook o instalarlo en una memoria USB o microSD de alta velocidad como de 100MB/s ya que de lo contrario el sistema sera muy lento al iniciar tenga esto muy en cuenta

- se recomienda probar primero una distribucion de linux con depthboot-builder antes de la instalacion de SteamOS para saber que incompatibilidad tiene su chromebook con linux (Audio,pantalla tactil entre otros).

- para las actulizaciones del sistema SteamOS debe percaterse que no tenga los repositorios oficiales de arch linux activados ya que puede que si actualiza con los repositorios oficiales de arch activados rompa algo en el sitema de SteamOS, solo use los repositorios oficiales de arch para actualizar los drivers de video y los paquetes de mesa y vulkan con exepcion de vulkan-intel en la instalacion se explicara mejor este tema

- se recomienda usar https://github.com/helmuthdu/aui antes de instalar SteamOS, esto con el fin para que instale el yay AUR y cambiar el idioma al sistema ya que por predeterminado esta en ingles y el yay es necesario para la siguiente recomendacion

- se recomienda instalar cpupower-gui para poder controrlar el gobernador del procesador ya que si no lo instala por predeterminado el gobernador estara en performance esto hace que la frecuencia del procesador siempre este al maximo, por consiguiente la frecuencia de la CPU no se queda dinamica y puede que su chromebook tenga problemas de sobrecalentamiento o que la duracion de la bateria se va afectada por lo mismo, por lo dicho anteriormente para las chromebooks es casi obrigatorio instalar cpupower-gui si no, pude que la vida util de su chromebook o bateria de la misma se va afectada por esto, ya quedan advertidos.

- para el uso de cpupower-gui se recomienda dejar el gobernador en performace para jugar titulos muy exigentes y cuando no este jugando o juegue titulos no tan exigentes cambielo a powersave, ya que esto permitira que la chromebook use toda la potencia para los juegos mas exigentes y cuando no sea necesario usar toda la potencia del procesador este mismo se quede en un modo de bajo consumo, esto sera lo mejor para su chromebook

- si va a instalar SteamOS con este scripts en un PC que no sean una chromebook modifique el pacman.conf y quite el repositorio de eupnea 
``` [eupnea] Server = https://eupnea-linux.github.io/arch-repo/repodata/$arch ```


**Instalacion de SteamOS:**

Para la ejecución del script debe tener instalado arch linux base o cli instalado en su Chromebook o PC, tambien se puede instalar en una almacenamiento externo pero no es lo recomendado, al menos que este tenga alta velocidad de transferencia.

Para los usuarios de las Chromebooks que son primerisos en la ejecucion de linux en una Chromebook siga los pasos de la pagina oficial de eupnea projects: https://eupnea-linux.github.io/main.html#/depthboot-pages/requirements.md

[opcional] usar https://github.com/helmuthdu/aui antes de instalar SteamOS, esto con el fin para que instale el yay AUR y cambiar el idioma al sistema ya que por predeterminado esta en ingles

Clone el repositorio de SteamOSBook

```
git clone https://github.com/raynor9029/SteamOSBook.git

cd SteamOSBook
```

Ejecute en modo root el install.sh

```
sudo su

./install.sh
```


Sigua el proceso de instalacion hasta que finalize

antes que reinicie tenga encuenta lo siguiente

Para la configuracion del inicio de SteamOS con la interfaz de SteamDeck tiene que editar el archivo autologin.conf ya que por predeterminado lo deje que inicie en el modo escritorio con KDE plasma esto con el fin de comprobar si el gamescope es compatible con su procesador de intel

```
nano /etc/sddm.conf.d/autologin.conf

#[General]
#DisplayServer=wayland

[Autologin]
User=raynor
Session=plasma.desktop
#Session=gamescope-wayland.desktop
Relogin=true

```
desmarque el Session=gamescope-wayland.desktop y marque con un # la linea de Session=plasma.desktop y deberia que quedar asi

```
#[General]
#DisplayServer=wayland

[Autologin]
User=raynor
#Session=plasma.desktop
Session=gamescope-wayland.desktop
Relogin=true

```

pero antes de hacer esto verifique que el gamescope funciones con su procesador con el siguiente comando con konsole

```
gamescope -e -f -h 720 -- steam -gamepadui -steamos3 -steamdeck -steampal
```
si no puede salir del gamescope solo ve al terminar con alt+tab y en la terminal sal con Ctrl + c

si todo inicio bien ya puedes ejecutar la interfaz de SteamOS solo modifique el /etc/sddm.conf.d/autologin.conf y desmarque el general y DisplayServer, el autologin deberia que quedarle asi

```
[General]
DisplayServer=wayland

[Autologin]
User=raynor
#Session=plasma.desktop
Session=gamescope-wayland.desktop
Relogin=true

```
y instale sddm-wayland con pacman ``sudo pacman -S sddm-wayland``  y reinicie 

en caso contrario que el gamescope no le funcione por diferentes motivos como por ejemplo pantalla negra error grafico o pantalla blanca revise que tenga las ultimas versiones de vulkan y que el paquete de vulkan-intel este instalada la version de holoiso con el siguiente comando puede revisarlo ``sudo pacman -Syy holoiso-stable/vulkan-intel`` y para los demas archivos vulkan puede usar el archivo de driversvulkanintel que esta en el repositorio y ejecuatarlo con root ``./driversvulkanintel``

Si los problemas con el gamescope de pantalla negra o pantalla blanca persisten no hay nada que hacer significa que su procesador no es compatible pero aun puede usar la interfaz de steamdeck con kde plasma siga mas abajo en la guia de instalacion donde explico como hacer esto

Si aparece este error grafico en el gamescope como se puede evidenciar en la siguiente captura de pantalla

![errorgrafico](https://user-images.githubusercontent.com/121831041/211701468-d4e6561b-3bf4-4de5-b4be-86c849a53656.jpeg)

para solucionar esto seria solo ejecutar el comando con la siguiente variable de entorno esto solo para los procesadores Intel

```
INTEL_DEBUG=norbc gamescope -e -f -h 720 -- steam -gamepadui -steamos3 -steamdeck -steampal
```

y si aun asi no se soluciona el problema del error grafico me temo que su procesador no es compatible con gamescope pero aun puede usar la interfaz de steamdeck con kde plasma siga mas abajo en la guia de instalacion donde explico como hacer esto

El error grafico tambien sucede si inicia la interfaz de SteamOS con el gamescope en SteamOS Session para solucionar esto edite el archivo gamescope-session con el siguiente comando ``nano /bin/gamescope-session`` y agrege la varible de INTEL_DEBUG de la siguiente manera


```
export INTEL_DEBUG=norbc
```

y listo al iniciar la session de SteamOS deberia que funcionar sin problemas.

**Ejecutar la Interfaz de SteamOS en KDE plasma:**

En caso de que no pueda iniciar la interfaz de SteamOS con gamescope tendra que inicarlo con KDE plasma con el siguiente comando por terminal:

```
steam -gamepadui -steamos3 -steampal -steamdeck
```

tenga encuenta que para iniciar la interfaz de SteamOS tendra que tener steam cerrado y en el caso de que el audio no le funcione con la interfaz en KDE, hay dos soluciones para esto quitar la linea de -steamos3 o actualizar a la beta de SteamDeck en steam en la seccion de configuraciones.

para que no tenga que iniciar la interfaz de SteamOS por medio del terminal puede usar el archivo que esta en el git de SteamOSBook steamos-gamemodeui.desktop tendra que pasarlo al escritorio y darle permisos con el comando``sudo chmod +x steamos-gamemodeui.desktop`` y modificar la linea de -steamos3 en caso de que sea necesario






