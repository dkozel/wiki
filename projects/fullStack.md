These projects are intended to result in "full stack" proofs of concept for embedded designs, from hardware design, HDL implementation, bootloader configuration, Linux compilation, to fully running and testable systems.

#### Hardware

##### [[Wyvern]] 
Embedded ARM single board computer
* http://hforsten.com/making-embedded-linux-computer.html

##### [[Drake]]
FPGA single board computer
* http://archive.linuxgizmos.com/uclinux-fpga-module-hardware-goes-open-source/
* http://www.ece.gatech.edu/academic/courses/ece4007/09spring/ece4007l01/ws3/#deliverables

#### Embedded Linux
* OpenEmbedded
* Yocto
* Board Support Packages
* U-Boot/Bareboot

#### Steps
* Use OpenEmbedded to compile Linux for [[Odroid XU4]]
* Instantiate OpenRISC or RISC-V on an FPGA board
* Use OpenEmbedded to compile Linux for soft CPU

#### Additional Useful Tech
* Device Firmware Update (DFU)
* Signed firmware updates
* USB CDC console