---
title: Treadmill Illumination PCB
parent: Walking Setup
permalink: /walking/illumination-pcb
nav_order: 4
---

# Treadmill Illumination PCB

[![Open GitHub folder]({{site.baseurl}}/assets/img/GitHub-Mark-32px.png) → to GitHub project folder](https://github.com/reiserlab/Fly-Lab-Gear/tree/main/Walking-Setup/Treadmill-Illumination){:.ifr}

A two-channel LED driver board for near-infrared (NIR) illumination of the spherical treadmill in the ["Integrated Inexpensive Treadmill"]({{site.baseurl}}/walking/inexpensive-treadmill#integrated-inexpensive-treadmill). The current version 2 runs from a regulated 5 V supply and drives two 850 nm LEDs in series per channel, with a trimmer per channel for brightness. The circuit contains no ICs and no PWM: brightness is set resistively, which keeps assembly simple and the adjustment stable between sessions. The earlier 12 V version 1 is described [further down](#version-1-12-v-legacy).

## Version 2 (5 V)

![]({{site.baseurl}}/Walking-Setup/Treadmill-Illumination/assets/Treadmill-Illumination-v2-0603_render.png){: .ifr .pop}

The v2 board in `v2/0603/` is powered through J2, a polarized right-angle (side-entry) SMD JST PH connector at the bottom edge; the cable leaves in the plane of the board instead of standing up from it. All parts are surface-mount on the top side. Each of the two independent channels is a chain of +5 V → fixed resistor → trimmer → LED → LED → GND. This is the 0603 LED alternate; other footprint alternates (1206 SMD, THT) may be added alongside it under `v2/` later.

The trimmer is wired as a variable resistor (rheostat): its wiper and one end terminal are tied together, so a wiper that loses contact leaves the full track in circuit, and the LEDs dim instead of going bright. Two trimmers let the two sides be balanced against each other at the ball, compensating for LED-to-LED output spread and lamp placement. Two M2 mounting holes (H1, H2) are plated and connected to GND.

| Reference | Component | Value | Part (LCSC) |
|-----------|-----------|-------|-------------|
| J2 | JST PH 2-pin, right-angle SMD, 2 mounting tabs (to GND) | pin 1 +5 V, pin 2 GND | JST S2B-PH-SM4-TB(LF)(SN) (C295747) |
| R3, R4 | Resistor, 1206 SMD, thick film ±1%, ±100 ppm/°C, ¼ W at 70 °C | 110 Ω | FOJAN FRC1206F1100TS (C2933579) |
| RV1, RV2 | Trimmer potentiometer, single-turn, SMD | 100 Ω | JIERR JER33X-1-12 (C52033642) |
| D10, D11, D14, D15 | NIR LED 850 nm, 0603, 120° | 2 per channel | Xinglight XL-1608HIRC-850 (C965885) |

### Operating limits

- **Supply:** regulated 5.0–5.25 V, for example a USB power adapter. **Never connect a 12 V supply** (such as a v1 cable): the LEDs are overdriven and the resistors overheat. The input has no reverse-polarity protection.
- **Ambient temperature up to 30 °C.** The LED's maximum current falls with temperature (30 mA at 25 °C, about 27.5 mA at 30 °C). Using the datasheet's 25 °C forward-voltage limits, no combination of parts and supply exceeds that (at most 26.2 mA). The datasheet gives no forward-voltage limits at 30 °C, so confirm on the rig by measuring current at 5.25 V after warm-up (see the bench test). "Ambient" means the air temperature next to the LEDs, including any heat from the rig.
- **Flicker:** there is no PWM, but brightness follows the supply. As a guide, 50 mV of supply ripple changes brightness by about 2%.

Expected LED current per channel. These are estimates from a diode model fitted to the datasheet; the 26.2 mA bound uses only the datasheet's minimum forward voltage.

| | Trimmer at minimum (brightest) | Trimmer at maximum (dimmest) |
|---|---|---|
| Typical board (Vf 1.5 V, 5.0 V supply) | 18.4 mA | 10.3 mA |
| Weakest board (Vf 1.7 V, 4.75 V supply) | 13.2 mA | — |
| Strongest board (Vf 1.2 V, 5.25 V supply) | 25.4 mA, at most 26.2 mA | — |

Light output scales roughly linearly with current. At the strongest-board worst case, each resistor dissipates at most 75 mW (rated 250 mW) and each LED at most about 37 mW (rated 45 mW at 25 °C). The trimmer carries the full LED current near its bright end; for a 100 Ω, 0.15 W part used as a rheostat, the usual limit is √(P/R), about 35 mA even at the trimmer's +25% tolerance, so there is ample margin. The design trades adjustment range for this safety margin: the trimmer covers roughly 1.7–1.8:1 in current. That trims brightness and usually balances the two sides, but LED output varies by up to 10× between bins, so check the balance in the camera. If one side stays too bright even at the dim end, raise that side's fixed resistor (for example to 130 or 150 Ω). For much dimmer light overall, reduce the camera exposure.

### Assembly notes

- **LED polarity.** The XL-1608HIRC-850 marks the **anode**, the opposite of most LEDs: the green mark is on its anode end. On the board, the silkscreen bracket around each LED is closed on the cathode side (pad 1). **Place each LED with its mark at the open end of the bracket.** A reversed LED leaves that channel dark. Check one LED with a multimeter diode test before soldering the rest.
- **Mounting.** Because H1 and H2 are connected to GND, metal screws into a grounded metal frame connect the LED supply ground to the rig ground. Use a plastic mount or nylon screws if that matters for the setup.
- **Cable.** Use a JST PHR-2 housing (LCSC C157955) with SPH-002T-P0.5S crimp contacts (C111515, **24–30 AWG**, insulation 0.9–1.5 mm), or a pre-crimped 2-pin PH lead. Pre-made PH leads, for example those sold for LiPo batteries, do not follow a consistent color or polarity convention. Before connecting, check that the positive wire lands on pin 1, the pin marked +5V. J2 is a surface-mount part held by its two contact joints and two mounting tabs; tie the cable to the mount instead of letting it hang from the connector.

### Bring-up and bench test

Measure LED current as the voltage across the 110 Ω resistor: **1 V ≈ 9.1 mA**. Probe the two end caps of the 1206 resistor.

Before power-up:

1. No short between +5 V and GND at J2.
2. The resistance from each trimmer's pin 1 to its wiper spans from about 0 Ω to 75–125 Ω as you turn it (the trimmer's ±25% tolerance).
3. With the cable plugged into the supply but not into the board, check that the wire going to pin 1 is positive.

Powered from the regulated 5 V supply, with both trimmers first turned to the dim end:

| Check | Expected | Stop if |
|-------|----------|---------|
| Voltage across R3/R4, trimmer at the dim end | about 1.1 V (10 mA) | — |
| Same, trimmer at the bright end | about 2.0 V (18 mA), up to 2.8 V with low-Vf LEDs | above 2.9 V (26.4 mA): wrong resistor, wrong trimmer, a shorted or bridged LED, or supply above 5.25 V |
| Brightness changes smoothly over the whole rotation | yes | a large dead zone (suggests a wiring error) |
| A channel is dark | — | check LED orientation |

Balance the two channels by looking at the ball in the tracking camera, not by matching currents. The LEDs vary in output by up to 10× between bins at the same current, so equal currents do not mean equal brightness. Note which direction of rotation is brighter.

**If a board is too dim for tracking** (for example with high-Vf LEDs), R3/R4 can be swapped for 100 Ω or 91 Ω 1206 resistors. Do this only on a board you have measured, and check it under worst-case conditions: supply set to **5.25 V** at J2, board warmed up for 10 minutes on the rig at or below 30 °C, trimmer at the bright end. The voltage across the new resistor must stay below **2.475 V for 100 Ω** or **2.25 V for 91 Ω** (25 mA, allowing for the resistor's 1% tolerance). If you can only test at 5.0 V, don't swap: a board that passes at 5.0 V can exceed the limit at 5.25 V. For boards built by others, keep 110 Ω.

## Version 1 (12 V, legacy)

![]({{site.baseurl}}/Walking-Setup/Treadmill-Illumination/assets/Treadmill-Illumination_font.png){: .ifr .pop}

12 V DC enters through a barrel jack. Each of the two independent channels connects a trimmer and a current-limiting resistor in series with four NIR LEDs. Adjusting the trimmer changes the effective resistance in the chain and therefore the LED current and brightness. Because the two channels share only the supply, each lamp cluster can be set independently. Three M2 mounting holes allow the board to be attached to the newest iteration of the [integrated inexpensive treadmill]({{site.baseurl}}/walking/inexpensive-treadmill#integrated-inexpensive-treadmill).

### Bill of materials (v1.1 THT build)

| Reference | Component | Value |
|-----------|-----------|-------|
| J1 | DC barrel jack | 5.5/2.1 mm THT |
| D9–D16 | NIR LED, 3 mm THT | 4 per channel |
| R3, R4 | Resistor, axial THT | 120 Ω |
| RV3, RV4 | Trimmer potentiometer | Bourns 3005, 25 turns |

### SMD alternative (DNP in v1.1)

The PCB also carries footprints for a surface-mount build. In v1.1 these are marked DNP (do not populate). Do not populate both variants on the same channel.

| Reference | Component | Notes |
|-----------|-----------|-------|
| D1–D8 | NIR LED, 1206 SMD | 4 per channel |
| R1, R2 | Resistor, 0805 SMD | 1 kΩ |
| RV1, RV2 | Trimmer | Bourns 3386C, single-turn: coarse adjustment |

## Production files

`v2/0603/production/` contains the fabrication package for the 0603 LED alternate of version 2: a Gerber/drill ZIP and IPC netlist, formatted for [JLCPCB]({{site.baseurl}}/production). The 3D model of the assembled board is `assets/Treadmill-Illumination-v2-0603.step`. The 3D model of the trimmer comes from the EasyEDA/LCSC library.

`v1/production/v1.1/` contains the legacy version 1.1 package (Gerber ZIP and IPC netlist), ordered from project "Treadmill Illumination" as W2026062323003684 on 2026-06-23. `v1/production/v1.0/` contains the earlier revision with a panel ZIP and IPC netlist only.
