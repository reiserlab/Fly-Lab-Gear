---
title: Treadmill Illumination PCB
parent: Walking Setup
permalink: /walking/illumination-pcb
nav_order: 4
---

# Treadmill Illumination PCB

[![Open GitHub folder]({{site.baseurl}}/assets/img/GitHub-Mark-32px.png) → to GitHub project folder](https://github.com/reiserlab/Fly-Lab-Gear/tree/main/Walking-Setup/Treadmill-Illumination){:.ifr}

A two-channel LED driver board for near-infrared (NIR) illumination of the spherical treadmill in the ["Integrated Inexpensive Treadmill"]({{site.baseurl}}/walking/inexpensive-treadmill#integrated-inexpensive-treadmill). Each channel independently drives four NIR LEDs in series from a 12 V supply, with a trimmer potentiometer per channel for brightness control. The circuit contains no ICs and no PWM, brightness is set resistively and therefore flicker free. This also keeps assembly straightforward and the adjustment stable between sessions.

## Version 2 (5 V)

The v2 board in `v2/` runs from a regulated 5 V supply (for example a USB power adapter) connected to J2, a polarized right-angle JST PH connector at the bottom edge; the cable leaves in the plane of the board instead of standing up from it. Each of the two independent channels drives two NIR LEDs in series. The per-channel chain is +5 V → fixed resistor → trimmer → LED → LED → GND. The trimmer is wired as a variable resistor (rheostat): its wiper and one end terminal are tied together, so a lifted wiper fails to maximum resistance, meaning minimum brightness. Two trimmers let the two sides be balanced against each other at the ball, compensating for LED-to-LED output spread and lamp placement.

| Reference | Component | Value | Part (LCSC) |
|-----------|-----------|-------|-------------|
| J2 | JST PH 2-pin, right-angle THT | pin 1 +5 V, pin 2 GND | JST S2B-PH-K-S(LF)(SN) (C173752) |
| R3, R4 | Resistor, axial THT, metal film ±1%, ¼ W | 100 Ω | YAGEO MFR-25FBF52-100R (C6300650) |
| RV1, RV2 | Trimmer potentiometer, single-turn, SMD | 500 Ω | JIERR JER33X-1-52 (C52034162) |
| D10, D11, D14, D15 | NIR LED 850 nm, 0603 | 2 per channel | Xinglight XL-1608HIRC-850 (C965885) |
| D2, D3, D6, D7 | *Alternative:* NIR LED 855 nm, 1206 with dome lens | DNP | Everlight HIR26-21C/L423/CT (C131273) |

Each 1206 footprint is wired in parallel with one 0603 footprint. Populate either the 0603 or the 1206 LEDs, never both: parallel LEDs without their own resistors do not share current evenly. The 1206 part has a lens and a much narrower beam (20° instead of 120°), so it is brighter on axis but less uniform across the ball. Its polarity mark is on the anode side, opposite to most LEDs; the cathode goes to pad 1.

The power cable needs a JST PHR-2 housing (LCSC C157955) with SPH-002T-P0.5S crimp contacts (C111515, 24–32 AWG), or a pre-crimped 2-pin PH lead. Pre-made PH leads, for example those sold for LiPo batteries, do not follow a consistent color or polarity convention. Before connecting, check that the positive wire lands on pin 1, which is the square pad marked +5V.

With the trimmer at minimum resistance the LED current is about 20 mA (typical), and at most about 28 mA at the worst-case combination of the lowest LED forward-voltage bin (1.2 V at 20 mA), a 5.25 V supply and a −1% resistor. This stays below the 30 mA maximum rating of the 0603 LED. At maximum trimmer resistance the current is about 4 mA. The 100 Ω resistor dissipates below 80 mW, each LED below 40 mW (rated 45 mW). Brightness scales roughly linearly with current; a 50 mV supply ripple changes brightness by about 2%, so use a regulated supply.

## Circuit (v1)

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

`v2/production/` contains the Gerber/drill ZIP and IPC netlist for version 2. The 3D model of the assembled v2 board is `assets/Treadmill-Illumination-v2.step`.
