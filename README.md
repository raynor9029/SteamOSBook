# **SteamOSBook SteamOS en tu Chromebook o PC con Intel**

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
> las chromebook al ser portatiles que no estan pensadas para jugar largas horas de juego, puede que al hacerlo estas sobrecaliente mas de lo recommendable, este problema es mucho peor en chromebooks que no cuentan con cooler o sistema de disipacion activa en el procesador, por lo mismo no me hago responsable si al usar o instalar SteamOS en su chromebook o PC esta se dañe o no vuelva a funcionar.
***haga la instalacion de SteamOS bajo su propia responsabilidad***



***Cosas que Funcionan en SteamOS con una Chromebook***
- SteamOS Session (Interfaz de usuario de deck) con gamescope (puede terner errores graficos o bajones de rendimiento en los juegos con los procesadores Intel, los errores graficos se pueden solucionar con una configuracion para los procesadores Intel, los bajones de rendimiento no tienen solucion por lo mismo se recomienda usar la Interfaz de Steam Deck con KDE plasma (modo escritorio en la instalacion se explica como hacerlo))
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

- juegos con anticheat que esten en Steam no funcionan solo los nativos si funcionan (pude que se tenga hacer una configuracion a parte para que los juegos que tiene anticheats de Steam funcionen, pero por el momento no e encontra la manera de hacerlos funcionar como en la Steam Deck)



Proceso de Instalacion:
- 
**Requisitos para las Chromebooks**
- 8Gb de ram (es necesario para la ejecucion de juegos con proton o wine ya que estos gastan mucha mas ram que con windows tambien se puede jugar con 4Gb de ram pero puede que se colapse la chromebook tendra que agregar zram o swap para tratar de evitar lo anterior mente dicho)

- 64Gb de almacenamiento (SteamOS es bastante pesado quisas con 32Gb se puede instalar SteamOS pero no tendras la mejor experiencia)

- procesador Intel i3 de octava generacion o superior (pude que tenga problemas con el gamescope en especial las Iris Xe de 11ª generación por lo mismo no se recomienda usar SteamOS Session si no sea probado antes en la instalacion explico como hacerlo)

- modo desarrollador activado (esto para poder ejecutar linux, tendras que ver el tutorial de eupnea proyects para instalar arch linux cli en una usb o en tu chromebook)

**Recomendaciones para la instalacion de SteamOS**

- hacer una copia de seguridad de ChromeOS en caso de que halgo salga mal esto se puede hacer con la herramienta de google (Herramienta de Recuperación de Chromebooks)

- hacer una copia de seguridad de los archivos que tenga en su chromebook  

- Se recomienda instalar SteamOS en el almacenamiento interno de la Chromebook o instalarlo en una memoria USB o microSD de alta velocidad como de 100MB/s ya que de lo contrario el sistema sera muy lento al iniciar tenga esto muy en cuenta

- se recomienda probar primero una distribucion de linux con depthboot-builder antes de la instalacion de SteamOS para saber que incompatibilidad tiene su chromebook con linux (Audio,pantalla tactil entre otros).


