# RVfpga SoC
### Autores
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

## Herramientas
- Vivado v2019.2 + Digilent Board Files
- Visual Studio Code + Extensión PlatformIO
- GTKWave
- Verilator v4.106


## Conexión de los módulos
Se utilizaron los siguientes módulos:

- 1 SweRV Core (swerv_wrapper_verilog)
- 1 Interconnect Wrapper (intcon_wrapper_bd)
- 1 Boot-ROM (bootrom_wrapper)
- 1 GPIO Top Module (gpio_wrapper)
- 1 System Controller (syscon_wrapper)
- 32 Bidirec Gpio Module (bidirec)

Se realizan conexiones internas y externas tal como se muestra en el archivo.
[Conexiones](https://github.com/Merchan00/RVfpga-SoC_Mantilla_Merchan/blob/main/BD.pdf).

## Generación del bitstream
![alt text](https://github.com/Merchan00/RVfpga-SoC_Mantilla_Merchan/blob/main/Bitstream.png)

## Recursos utilizados 
![alt text](https://github.com/Merchan00/RVfpga-SoC_Mantilla_Merchan/blob/main/LUT.png)

### Síntesis 

| Bloque   | Cantidad  |
| -------- | ----------|
| `ALU`    | 3368      |
| `FF`     | 3331      |

### Implementación 

| Bloque   | Cantidad  |
| -------- | ----------|
| `ALU`    | 33623     |
| `FF`     | 18546     |

## Correr el programa con Verilator

Se agrega el archivo generado BD.v generado en el laboratorio 1 a la carpeta "SweRVolfSoC" dentro de los recursos del Laboratorio 2.

![alt text](https://github.com/Merchan00/RVfpga-SoC_Mantilla_Merchan/blob/main/BDonNewDir.png)

Adicionalmente, se verifica que el archivo pegado tenga los módulos definidos de la siguiente forma.

- BD_bootrom_wrapper_0_0
- BD_gpio_wrapper_0_0
- BD_intcon_wrapper_bd_0_0
- BD_swerv_wrapper_verilog_0_0
- BD_syscon_wrapper_0_0

Después de comprobar que los módulos tengan los nombres especificados, se genera el simulador binario utilizando los sigueintes comandos en la terminal de Cygwin.

```sh
cd [PATH]\RVfpga-SoC_Mantilla_Merchan\LabResources\Lab2\verilatorSIM
make clean
make
```
Para corregir unos errores de esta parte, se debe iincluir en el archivo verilated.vpp lo siguiente:
```cpp
#include <limits>
#include <cstddef>
#include <iostream>
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

### Error en la generación de trace.vcd

Después de utilizar el PlatformIO para generar el archivo "trace.vcd" y otros más, el archivo para visualizar utilizando GTKWave, "trace.vcd" no aparece en la carpeta donde aparecen el resto de los archivos generados.

![alt text](https://github.com/Merchan00/RVfpga-SoC_Mantilla_Merchan/blob/main/NotTrace.png)

Adicionalmente, para comprobar que no sea efecto de la versión de PlatformIO, se trabajó con la versión más actual (2.4.2) y con la versión utilizada en la guía de la práctica (2.0.1), este cambio no hace que se arroje el archivo.

![alt text](https://github.com/Merchan00/RVfpga-SoC_Mantilla_Merchan/blob/main/plat.png)


## Conclusiones
- Al realizar las conexiones entre módulos es recomendable realizar una revisión exhaustiva de los puertos de conexión y los modulos implementados, y trabajar únicamente con la versión 2019.2 de vivado, debido a que se puede incurrir en errores de la generación del HDL wrapper, implica errores de sintesís e implementación en el archivo bitstream.
- Se debe trabajar con extremo cuidado las direcciones de los archivos, pues se trabaja con fuentes adicionales propuestas por el ejercicio. 
- La simulación binaria del programa es importante debido a que nos ayuda a comprobar que las conexiones hechas y el bloque de diseño generado en la primera práctica funciona correctamente. Adicionalmente, en esta página se resalta el uso de la extensión PlatformIO IDE de Visual Studio Code que permite generar la traza para poderla ver en GTKWave, comprobar el uso de la memoria y otras opciones.
- En la generación de la traza del comportamiento, no se genera ningún error, pero al momento de arrojar el archivo “trace.vcd”, que contine la información para poder verla en GTKWave, no es generado. Esto puede ser debido a alguna interferencia entre Verilator y la extensión de PlatformIO de VSCode.



## Referencias
- [Imagination University Programme: RVfpga – Introduction to RVfpgaSoC – EN – V1.0](https://university.imgtec.com/resources/download/rvfpgasoc-v1-0/)
- [Descarga archivos boards Vivado](https://digilent.com/reference/programmable-logic/guides/installing-vivado-and-sdk?redirect=1#installing_digilent_board_files)
- [Instalación board Nexys A7 en Vivado](https://store.digilentinc.com/nexys-a7-fpga-trainer-board-recommended-for-ece-curriculum/)
- [Descarga Vivado](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/2019-2.html)
- [SweRVolf Core](https://github.com/chipsalliance/Cores-SweRVolf)
- [PlatformIO - RVfpga: Digilent Nexys A7](https://docs.platformio.org/en/latest/boards/chipsalliance/swervolf_nexys.html)



