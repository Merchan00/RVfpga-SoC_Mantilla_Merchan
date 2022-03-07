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

## Referencias
- https://digilent.com/reference/programmable-logic/guides/installing-vivado-and-sdk?redirect=1#installing_digilent_board_files
- https://store.digilentinc.com/nexys-a7-fpga-trainer-board-recommended-for-ece-curriculum/
- https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/2019-2.html
- https://github.com/chipsalliance/Cores-SweRVolf



