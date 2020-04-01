# PCB

Some electronic components are built with custom PCBs. 


## M55-RJ45 converter

Some of the arena panels are connected via 20 pin Archer M55 connectors. For a prototype, we wanted to transmit a subset from seven specific pins via ethernet cables. The M55-RJ45 project adapts specific M55 pins to the RJ45 pins.

| M55 pin(s) | RJ45 pin(s) |
| :---:      | :---:       |
| 6          | 3           |
| 11+12+14   | 2           |
| 13         | 5           |
| 15         | 4           |
| 16         | 6           |
| 17         | 3           |
| 18         | 8           |
| 19 + 20    | 7 + 1       |

The M55 and RJ45 connectors have pads on opposite sides of the PCB, and contain both versions for [male](https://www.digikey.com/short/zjdjrj) and [female](https://www.digikey.com/short/zjdjr1) M55 connectors. For the [RJ45 connector](https://www.digikey.com/short/zjdjf8), we use a surface-mount only version.


# File types

File types and applications to open them are explained in our [project README](../README.md).