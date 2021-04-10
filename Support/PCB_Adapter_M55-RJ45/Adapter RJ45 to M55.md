---
title: Adapter RJ45 to M55
parent: Support
---

# PCB

[![Open GitHub folder](/assets/img/GitHub-Mark-32px.png) to GitHub project folder](https://github.com/reiserlab/Component-Design/tree/main/Support/PCB_Adapter_M55-RJ45){:.ifr}
For prototyping we needed an adapter from an RJ45 connector (standard network) to an [Harwin Archer M55](https://www.harwin.com/products/M55-6002042R/) with a specific mapping. This is the custom PCB for it.

## M55-RJ45 converter

![Machined Sarcophagus assembly]({{ "/assets/img/Support/Adapter_M55-RJ45/Adapter_M55-RJ45.png" | relative_url }}){:.ifr .pop}
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
{:.clear}

The M55 and RJ45 connectors have pads on opposite sides of the PCB, and contain both versions for [male](https://www.digikey.com/short/zjdjrj) and [female](https://www.digikey.com/short/zjdjr1) M55 connectors. The rendering above shows the "f" (female) side of the PCB. For the [RJ45 connector](https://www.digikey.com/short/zjdjf8), we use a surface-mount only version.
