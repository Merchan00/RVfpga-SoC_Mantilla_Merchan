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

De esta ejecución se generan los archivos de simulación y en especial "Vrvfpgasim.exe" que sirve para generar un archivo para poder revisar la simulación en GTKWave

## Conclusiones


## Referencias
- [Imagination University Programme - RVfpga – Introduction to RVfpgaSoC – EN – V1.0](https://university.imgtec.com/resources/download/rvfpgasoc-v1-0/)
- [Descarga archivos boards Vivado](https://digilent.com/reference/programmable-logic/guides/installing-vivado-and-sdk?redirect=1#installing_digilent_board_files)
- [Instalación board en Nexys A7 en Vivado](https://store.digilentinc.com/nexys-a7-fpga-trainer-board-recommended-for-ece-curriculum/)
- [Descarga Vivado](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/2019-2.html)
- [SweRVolf Core](https://github.com/chipsalliance/Cores-SweRVolf)
- [PlatformIO - RVfpga: Digilent Nexys A7](https://docs.platformio.org/en/latest/boards/chipsalliance/swervolf_nexys.html)



