# RVfpga SoC

## Autores
Juan José Mantilla Parra
<br/>
Est. Ingenieria electrónica - 2172324
<br/>
jjmantilla77@gmail.com
<br/>
Mishell Merchán Cardoza
<br/>
Est. Ingenieria electrónica - 2172329
<br/>
mishellmc1700@gmail.com

Este curso fue creado por Imagination University Programme, muestra como construir un subconjunto de SweRVolfX SoC desde cero utilizando bloques de construcción como el núcleo SweRV, las memorias y los periféricos.
El curso también muestra como cargar el sistema operativo en tiempo real Zephyr (RTOS) en el SweRVolf y ejecutar programas.

[Introduction to RVfpgaSoC - Imagination](https://university.imgtec.com/resources/download/rvfpgasoc-v1-0/)

Se realizaron los primeros dos laboratorios presentados en este curso.

## Herramientas
- [Vivado v2019.2](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/2019-2.html)
- [Digilent Board Files](https://digilent.com/reference/programmable-logic/guides/installing-vivado-and-sdk?redirect=1)
- [Visual Studio Code](https://code.visualstudio.com/Download)
- [Extensión PlatformIO](https://platformio.org/)
- [GTKWave](http://gtkwave.sourceforge.net/)
- [Verilator v4.106](https://github.com/verilator/verilator)

## Laboratorio 1

### Conexión de los módulos
Utilizando la función de diseño de bloques de Vivado se añaden los módulos necesarios para crear el subconjunto SweRVolfX y luego conectar los módulos entre sí.

Se utilizaron los siguientes módulos:
- 1 SweRV Core (swerv_wrapper_verilog)
- 1 Interconnect Wrapper (intcon_wrapper_bd)
- 1 Boot-ROM (bootrom_wrapper)
- 1 GPIO Top Module (gpio_wrapper)
- 1 System Controller (syscon_wrapper)
- 32 Bidirec Gpio Module (bidirec)

Se realizan conexiones internas y externas tal como se muestra en el archivo.
[Conexiones](https://github.com/Merchan00/RVfpga-SoC_Mantilla_Merchan/blob/main/BD.pdf).

### Generación del bitstream
Luego de realizar las conexiones entre los módulos, obtenemos el subconjunto SweRVolfX utilizando la herramienta de diseño de bloques de Vivado y hemos generado un wrapper de Verilog, estamos listos para generar el bitstream que utilizaremos para configurar la FPGA.

Este bitstream se genera a partir de una Nexys A7-100T, consiste en el diseño de la síntesis y la implementación del modelo.
![alt text](https://github.com/Merchan00/RVfpga-SoC_Mantilla_Merchan/blob/main/Bitstream.png)


### Recursos utilizados 
![alt text](https://github.com/Merchan00/RVfpga-SoC_Mantilla_Merchan/blob/main/LUT.png)

#### Síntesis 

| Bloque   | Cantidad  |
| -------- | ----------|
| `ALU`    | 3368      |
| `FF`     | 3331      |

#### Implementación 

| Bloque   | Cantidad  |
| -------- | ----------|
| `ALU`    | 33623     |
| `FF`     | 18546     |

## Laboratorio 2

### Ejecutar el programa con Verilator

Se agrega el archivo generado BD.v generado en el laboratorio 1 a la carpeta "SweRVolfSoC" dentro de los recursos del Laboratorio 2.

![alt text](https://github.com/Merchan00/RVfpga-SoC_Mantilla_Merchan/blob/main/BDonNewDir.png)

Adicionalmente, se verifica que el archivo pegado tenga los módulos definidos de la siguiente forma.

- BD_bootrom_wrapper_0_0
- BD_gpio_wrapper_0_0
- BD_intcon_wrapper_bd_0_0
- BD_swerv_wrapper_verilog_0_0
- BD_syscon_wrapper_0_0

Después de comprobar que los módulos tengan los nombres especificados, se genera el simulador binario utilizando los siguientes comandos en la terminal de Cygwin.

```sh
cd [PATH]\RVfpga-SoC_Mantilla_Merchan\LabResources\Lab2\verilatorSIM
make clean
make
```

De esta ejecución se generan los archivos de simulación y en especial "Vrvfpgasim.exe" que sirve para generar un archivo para poder revisar la simulación en GTKWave

```ini
[env:swervolf_nexys]
platform = chipsalliance
board = swervolf_nexys
framework = wd-riscv-sdk

monitor_speed = 115200

#debug_tool = whisper
#board_build.bitstream_file = home/RvfpgaSoC/BlockDesign/src/rvfpga.bit
board_debug.verilator.binary = C:/UIS/Arqui/Curso/RVfpgaSoC/Labs/LabResources/Lab2/verilatorSIM/Vrvfpgasim.exe
```

```sh
Executing task: C:\Users\super\.platformio\penv\Scripts\platformio.exe run --target generate_trace --environment swervolf_nexys <

Processing swervolf_nexys (platform: chipsalliance; board: swervolf_nexys; framework: wd-riscv-sdk)
-------------------------------------------------------------------------------------------------------------------------------Verbose mode can be enabled via `-v, --verbose` option
CONFIGURATION: https://docs.platformio.org/page/boards/chipsalliance/swervolf_nexys.html
PLATFORM: CHIPS Alliance (1.1.0) > RVfpga: Digilent Nexys A7
HARDWARE: 320MHz, 1.16MB RAM, 16MB Flash
DEBUG: Current (digilent-hs1) On-board (digilent-hs1, verilator, whisper) External (olimex-arm-usb-ocd, olimex-arm-usb-ocd-h, olimex-arm-usb-tiny-h, olimex-jtag-tiny)
PACKAGES:
 - framework-wd-riscv-sdk 0.0.0-alpha+sha.ca4b2392d8
 - tool-openocd-riscv-chipsalliance 1.1100.211104+sha.857b5cec1b
 - tool-verilator-swervolf 0.0.201130
 - toolchain-riscv 1.80300.190927 (8.3.0)
LDF: Library Dependency Finder -> https://bit.ly/configure-pio-ldf
LDF Modes: Finder ~ chain, Compatibility ~ soft
Found 0 compatible libraries
Scanning dependencies...
No dependencies
Building in release mode
Checking size .pio\build\swervolf_nexys\firmware.elf
Advanced Memory Usage is available via "PlatformIO Home > Project Inspect"
RAM:   [          ]   1.0% (used 12304 bytes from 1216512 bytes)
Flash: [          ]   0.0% (used 268 bytes from 16777216 bytes)
Generating trace from Verilator
================================================= [SUCCESS] Took 4.49 seconds =================================================
```

Con ayuda del compañero Vladimir Sebastian Villamizar Anaya - 2171522, se genera el archivo "trace1.vcd" (el archivo supera el tamaño permitido por Git, entonces se puede encontrar en el siguente [enlace](https://drive.google.com/file/d/181ZfMa8RJT4jShKXa2QxValg4CYcH3XU/view?usp=sharing)) con el cuál podemos comprobar el correcto funcionamiento en las siguientes imagenes:

![alt text](https://github.com/Merchan00/RVfpga-SoC_Mantilla_Merchan/blob/main/tra1n.png)

![alt text](https://github.com/Merchan00/RVfpga-SoC_Mantilla_Merchan/blob/main/tra2.png)

![alt text](https://github.com/Merchan00/RVfpga-SoC_Mantilla_Merchan/blob/main/tra3.png)

Comparando los resultados obtenidos con los presentados en la guía del Laboratorio 2. Podemos comprobar que tienen el mismo funcionamiento.

#### Errores en la ejecución
En la instalación de Verilator en Windows 10, se genera un error al ejecutar la línea make de los siguientes comandos.
```shh
 git clone https://git.veripool.org/git/verilator
 cd verilator
 git pull
 git checkout v4.020
 autoconf
 ./configure
 make
 make install
 ```
 ![alt text](https://github.com/Merchan00/RVfpga-SoC_Mantilla_Merchan/blob/main/error1.jpeg)
 
Para corregir este error, en lugar de instalar la versión 4.020 de verilator se instala la versión 4.160.
```shh
 git clone https://git.veripool.org/git/verilator
 cd verilator
 git pull
 git checkout v4.120
 autoconf
 ./configure
 make
 make install
 ```
 
Luego en la ejecución de los comandos:
```sh
cd [PATH]\RVfpga-SoC_Mantilla_Merchan\LabResources\Lab2\verilatorSIM
make clean
make
```
Se genera el siguiente error:
 
![alt text](https://github.com/Merchan00/RVfpga-SoC_Mantilla_Merchan/blob/main/error2.jpeg)
 
Para corregir este error, se incluye en el archivo verilated.vpp lo siguiente:
```cpp
#include <limits>
#include <cstddef>
#include <iostream>
```

Después de utilizar el PlatformIO para generar el archivo "trace.vcd" y otros más, el archivo para visualizar utilizando GTKWave, "trace.vcd" no aparece en la carpeta donde aparecen el resto de los archivos generados.

![alt text](https://github.com/Merchan00/RVfpga-SoC_Mantilla_Merchan/blob/main/NotTrace.png)

Adicionalmente, para comprobar que no sea efecto de la versión de PlatformIO, se trabajó con la versión más actual (2.4.2) y con la versión utilizada en la guía de la práctica (2.0.1), este cambio no hace que se arroje el archivo.

![alt text](https://github.com/Merchan00/RVfpga-SoC_Mantilla_Merchan/blob/main/plat.png)


## Conclusiones
- Al realizar las conexiones entre módulos es recomendable realizar una revisión exhaustiva de los puertos de conexión y los modulos implementados, y trabajar únicamente con la versión 2019.2 de vivado, debido a que se puede incurrir en errores de la generación del HDL wrapper, implica errores de sintesís e implementación en el archivo bitstream.
- La simulación binaria del programa es importante debido a que nos ayuda a comprobar que las conexiones hechas y el bloque de diseño generado en la primera práctica funciona correctamente. Adicionalmente, en esta página se resalta el uso de la extensión PlatformIO IDE de Visual Studio Code que permite generar la traza para poderla ver en GTKWave, comprobar el uso de la memoria y otras opciones.
- En la generación de la traza del comportamiento, se generan algunos errores que se solucionan, pero al momento de arrojar el archivo “trace.vcd”, que contine la información para poder verla en GTKWave, no es generado. Esto puede ser debido por un problema con Verilator ya que en Windows 10 no se pudo instalar la versión 4.020 mencionada en la guía de instalación de las herramientas.
- Analizando el archivo “trace1.vcd” generado utilizando el archivo “BD.v” realizado, podemos ver que el comportamiento es el esperado, dándonos a entender que se realizaron correctamente las conexiones de los diferentes bloques. Adicionalmente, podemos evidenciar que los efectos de las instrucciones se dan 8 o más ciclos después de que fueron realizadas, esto debido a la configuración de 9 etapas de Pipeline del procesador.


## Referencias
- [Imagination University Programme: RVfpga – Introduction to RVfpgaSoC – EN – V1.0](https://university.imgtec.com/resources/download/rvfpgasoc-v1-0/)
- [Descarga archivos boards Vivado](https://digilent.com/reference/programmable-logic/guides/installing-vivado-and-sdk?redirect=1#installing_digilent_board_files)
- [Instalación board Nexys A7 en Vivado](https://store.digilentinc.com/nexys-a7-fpga-trainer-board-recommended-for-ece-curriculum/)
- [Descarga Vivado](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/2019-2.html)
- [SweRVolf Core](https://github.com/chipsalliance/Cores-SweRVolf)
- [PlatformIO - RVfpga: Digilent Nexys A7](https://docs.platformio.org/en/latest/boards/chipsalliance/swervolf_nexys.html)



