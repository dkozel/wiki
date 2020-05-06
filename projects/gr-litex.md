An FPGA demonstration using GNU Radio using LiteX on an Artix 7 with PCIe interface.

## Topics to explore

* prjxray for Artix 7
    * Chat Log: https://freenode.irclog.whitequark.org/litex/2020-05-04#26958149
    * Get simple test image working with Aller or CEL-215+
    * Add fuzzing of PCIe HardIP

## Hardware

### Numato Aller
* Artix 7 200T
* PCIe Gen 2 x4 - m.2 m-key
* RAM
* Flash

Heatsink seems to be insufficient and poorly attached. Two possible replacements:

SKU: FI23+Bu+T725  
https://www.radianheatsinks.com/product/fi23/

hUMANDATA MBA23001-X01  
https://www2.hdl.co.jp/en/plink/mba23001-x01.html

### SQRL Acorn CLE-215+

JTAG header cable: WM26622-ND 

### Ideas

* USB 3.0 PIPE interface [GitHub](https://github.com/enjoy-digital/usb3_pipe)

> _florent_: good for the CLE-215, it should be possible to use the USB3 PIPE with it yes, but there are still some work to do on the USB3 Core to have something really usable. Kate Temkin will probably work on a new USB3 core to replace the Daisho one, so there should be interesting things coming in the next months.  
> dkozel: Cool. I'll backburner a variant of the PCIeish for m.2. 

* Improve nextpnr's Artix 7 support to allow fully opensource PCIe IP

## Software

LiteX
* LitePCIe

* Vivado
* Yosys+Vivado
* Yosys+nextpnr

