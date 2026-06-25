---
title: Treadmill Illumination PCB
parent: Walking Setup
permalink: /walking/illumination-pcb
nav_order: 4
---

# Treadmill Illumination PCB

[![Open GitHub folder]({{site.baseurl}}/assets/img/GitHub-Mark-32px.png) → to GitHub project folder](https://github.com/reiserlab/Fly-Lab-Gear/tree/main/Walking-Setup/Treadmill-Illumination){:.ifr}

A two-channel LED driver board for near-infrared (NIR) illumination of the spherical treadmill in the ["Integrated Inexpensive Treadmill"]({{site.baseurl}}/walking/inexpensive-treadmill#integrated-inexpensive-treadmill). Each channel independently drives four NIR LEDs in series from a 12 V supply, with a trimmer potentiometer per channel for brightness control. The circuit contains no ICs and no PWM, brightness is set resistively and therefore flicker free. This also keeps assembly straightforward and the adjustment stable between sessions.

## Circuit

![]({{site.baseurl}}/Walking-Setup/Treadmill-Illumination/assets/Treadmill-Illumination_font.png){: .ifr .pop}

12 V DC enters through a barrel jack. Each of the two independent channels connects a trimmer and a current-limiting resistor in series with four NIR LEDs. Adjusting the trimmer changes the effective resistance in the chain and therefore the LED current and brightness. Because the two channels share only the supply, each lamp cluster can be set independently. Three M2 mounting holes allow the board to be attached to the newest iteration of the [integrated inexpensive treadmill](({{site.baseurl}}/walking/inexpensive-treadmill#integrated-inexpensive-treadmill)).

## Bill of materials (v1.1 THT build)

| Reference | Component | Value |
|-----------|-----------|-------|
| J1 | DC barrel jack | 5.5/2.1 mm THT |
| D9–D16 | NIR LED, 3 mm THT | 4 per channel |
| R3, R4 | Resistor, axial THT | 120 Ω |
| RV3, RV4 | Trimmer potentiometer | Bourns 3005, 25 turns |

## SMD alternative (DNP in v1.1)

The PCB also carries footprints for a surface-mount build. In v1.1 these are marked DNP (do not populate). Do not populate both variants on the same channel.

| Reference | Component | Notes |
|-----------|-----------|-------|
| D1–D8 | NIR LED, 1206 SMD | 4 per channel |
| R1, R2 | Resistor, 0805 SMD | 1 kΩ |
| RV1, RV2 | Trimmer | Bourns 3386C, single-turn: coarse adjustment |

## Production files

`production/v1.1/` contains the current fabrication package for this revision: Gerber ZIP, BOM CSV, component placement CSV, and IPC netlist, formatted for [JLCPCB]({{site.baseurl}}/production). Ordered from project "Treadmill Illumination" as W2026062323003684 on 2026-06-23.

`production/v1.0/` contains the earlier revision with a panel ZIP and IPC netlist only.
Walking-Setup/Inexpensive-Treadmill_Assembly/Inexpensive-Treadmill_Assembly.html
