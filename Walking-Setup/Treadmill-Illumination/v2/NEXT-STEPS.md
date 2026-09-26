# Treadmill Illumination v2: next steps before ordering

Working notes for finishing PR #50 on a local machine. **Delete this file before merging.**

Branch: `claude/treadmill-illumination-design-nbnnwy` (PR #50 → `treadmill-illumination-v2`).

## 0. Local setup (one time)

- [x] **Install KiCad 10.0.x** from kicad.org, including the standard libraries (the default). The files are KiCad 10 format; KiCad 9 and older cannot open them. (Checked with 10.0.1.)
- [x] On first launch, if KiCad asks about the global symbol and footprint library tables, choose **"Copy default global table"**. J2, the LEDs and the resistors come from the standard libraries (`Connector_JST`, `LED_SMD`, `Resistor_THT`, `MountingHole`). The trimmer footprint and its 3D model come from the project-local `potentiometer-C48997897.pretty` and `potentiometer-C48997897.3dshapes`.
- [x] Check out the branch:

  ```
  git fetch origin
  git checkout claude/treadmill-illumination-design-nbnnwy
  ```

- [x] Where `kicad-cli` lives:
  - Linux: on the PATH
  - macOS: `/Applications/KiCad/KiCad.app/Contents/MacOS/kicad-cli`
  - Windows: `C:\Program Files\KiCad\10.0\bin\kicad-cli.exe`

## Status

Done in the PR, first pass:

- RV1/RV2 rewired as rheostats (pin 3 tied to the wiper) in the schematic and on the PCB
- R3/R4 set to 100 Ω and RV1/RV2 to 500 Ω
- J2 changed from a vertical screw terminal to a right-angle JST PH 2-pin (S2B-PH-K-S, C173752), with the cable exiting at the bottom board edge
- All 8 board-outline corners rounded with a 2 mm radius, including the 2 inside corners of the notch
- GND pour refilled, with isolated islands removed

Done in the PR, second pass (2026-09-26):

- Vendor parts chosen and entered in the schematic and PCB `LCSC` fields (section 1)
- Datasheets checked for all parts. One finding: the 0603 LED's minimum Vf is 1.2 V, not 1.3 V. The worst-case current was recomputed: 27.4 mA, which is still below 30 mA (section 5).
- ERC and DRC re-run with the expected results (section 2)
- Silkscreen date changed to `v2.0 2026-09-26`. No boards had been ordered from the 2026-09-25 files, so the version stays v2.0. Schematic title block changed from `rev v1.1` / 2026-06-22 to `rev v2.0` / 2026-09-26. The +5 V zone on B.Cu was renamed from "12V" to "5V".
- Unused `power-terminal.pretty` library and its `fp-lib-table` entry removed
- A 3D model was added for the RV1/RV2 trimmers. The STEP was re-exported without the DNP parts, and renders were checked.
- Production files regenerated (section 3)
- Docs updated: the BOM has LCSC numbers and the current figures are corrected

Still open:

1. A visual review in KiCad, and the fit against the treadmill mount (section 2, the unticked items)
2. Order the boards and record the order in the docs (section 6)
3. A bench test after assembly (section 4)

## 1. Vendor parts: choose and enter

Chosen parts:

- **R3, R4: YAGEO MFR-25FBF52-100R, LCSC C6300650.** 100 Ω ±1% metal film, 250 mW. The body is 6.3 ± 0.5 mm long, 2.4 ± 0.2 mm in diameter, with 0.55 mm leads, so it fits `R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal`. The worst-case dissipation is 76 mW, a 3× margin.
- **RV1, RV2: JIERR JER33X-1-52, LCSC C52034162.** 500 Ω, 150 mW, ±25%, the same 33X series and SMD-3P 3.4 × 3.1 mm package as the old 1 kΩ C48997897 (JER33X-1-13). One series datasheet covers every value; resistance code 52 means 500 Ω.
  - The datasheet's recommended land pattern matches the project footprint: pins 1/3 are 1.2 × 1.2 mm with a 0.8 mm gap (so at x = ±1.0 mm), the wiper pad is 1.6 × 1.5 mm, and the wiper is about 3.25 mm from the pin 1/3 row. The footprint has 3.2 mm, a 0.05 mm difference that doesn't matter.
  - The EasyEDA/LCSC library footprint for this part uses 1.8 mm pitch and 3.02 mm spacing. **Don't swap to it.** Only its 3D model was reused.
  - The footprint keeps its old name `C48997897` because the land pattern is identical.

Checks on the parts that did not change:

- [x] **D10, D11, D14, D15: Xinglight XL-1608HIRC-850 (C965885).** 18.5k in stock at JLCPCB/LCSC (2026-09-26), no EOL marking there.
  - IF(max) = 30 mA, IFP = 100 mA (0.1 ms pulses, 1/10 duty), Pd = 45 mW, 120° viewing angle, 850 nm.
  - **Vf at 20 mA is 1.2–1.7 V**, sold in bins M17-3 (1.2–1.3 V) to M17-7 (1.6–1.7 V). The earlier notes assumed a 1.3 V minimum. Section 5 was redone: the worst case is 27.4 mA (27.7 mA with a −1% resistor), still below 30 mA. LED dissipation at that current is 35 mW, below 45 mW. **100 Ω stays.**
- [x] **D2, D3, D6, D7 (DNP alternative): Everlight HIR26-21C/L423/CT (C131273).** Datasheet DIR-0001085 Rev 4 (2024).
  - IF(max) = 65 mA and Pd = 110 mW, so there's plenty of margin for the ≤ 23 mA it can see here.
  - **Viewing angle 20°**, compared with 120° for the 0603, so the beam is much narrower.
  - Land pattern: the suggested pads are 0.75 × 1.8 mm at ±1.25 mm centres. The KiCad hand-solder 1206 pads (1.425 × 1.75 mm at ±1.49 mm) cover them, so the part fits.
  - Polarity: pin 1 is the cathode, which matches the footprint's pad 1. **The mark on the part is on the anode side**, the opposite of most LEDs.
  - The drawing in the Rev 4 PDF doesn't render; the Rev 2 drawing (2016) was used, and the package is unchanged.
  - The datasheet's suggested land pattern also draws a Ø2.5 mm hole with the dome through the board, which looks like a reverse-mount option. Top mounting on the pads, as this board does, still works.
- [x] **J2: JST S2B-PH-K-S(LF)(SN), LCSC C173752.** 2 A, 100 V, for PCB thickness 0.8–1.6 mm; this board is 1.6 mm. Plenty in stock.
  - Footprint: KiCad stock `Connector_JST:JST_PH_S2B-PH-K_1x02_P2.00mm_Horizontal`. The mating face is flush with the bottom board edge (y = 122 mm), so the cable exits downward in the board plane. The renders confirm the orientation.
  - Mating parts: PHR-2 housing (LCSC C157955; only a few in stock there, but widely stocked elsewhere, and the colour variants PHR-2-BK/-R/-Y/-BL mate identically) and SPH-002T-P0.5S crimps (C111515, 24–32 AWG), or a pre-crimped PH lead.
  - Pin 1 is +5 V: the square pad, labelled `+5V` on the silkscreen. Pin 2 is GND.

| Ref | Value | LCSC # | MPN | Datasheet checked |
|-----|-------|--------|-----|-------------------|
| R3, R4 | 100 Ω ±1%, ¼ W | C6300650 | YAGEO MFR-25FBF52-100R | [x] |
| RV1, RV2 | 500 Ω | C52034162 | JIERR JER33X-1-52 | [x] |
| D10, D11, D14, D15 | 850 nm 0603 | C965885 | Xinglight XL-1608HIRC-850 | [x] |
| D2, D3, D6, D7 (DNP) | 855 nm 1206 dome | C131273 | Everlight HIR26-21C/L423/CT | [x] |
| J2 | JST PH 2-pin right-angle | C173752 | S2B-PH-K-S(LF)(SN) | [x] |
| (cable) | PH housing + crimps | C157955 + C111515 | PHR-2 + SPH-002T-P0.5S | [x] |

## 2. Review in KiCad

- [x] **ERC:** 2 violations, both the expected `power_pin_not_driven` warnings (there's no PWR_FLAG).
- [x] **DRC** with schematic parity and zones refilled: 0 unconnected items, 0 parity issues, and the 13 expected silkscreen warnings:
  - 3 `silk_overlap` and 4 `silk_over_copper`, which were already in the original board
  - 6 `silk_edge_clearance` on J2, because its outline reaches the flush board edge. The fab clips that silkscreen automatically.
- [ ] Visually check around RV1 and RV2 in the PCB editor: the 0.5 mm trace from pad 3 to pad 2 (the wiper), and that the GND pour clears it.
- [x] 3D renders (top, bottom, isometric, edge, J2 and RV1 close-ups):
  - J2's opening faces the bottom board edge
  - All corners are rounded, including the two inside the notch
  - The LEDs sit on the 0603 pads
  - RV1/RV2 now have a model that sits on the pads
- [ ] Rounded outline, 2 mm radius. Check the fit against the treadmill mount:
  - The notch's two inside corners now have 2 mm fillets. These add up to about 0.8 mm of board material at each inside corner of the notch.
  - At the bottom-right corner, J2's plastic front corner overhangs the rounded edge by about 0.24 mm.
  - The plug needs room to insert below the board edge.
- [x] Version label: stays v2.0, date changed to 2026-09-26 (front and back)
- [x] Schematic title block: `rev v2.0`, 2026-09-26
- [x] +5 V zone renamed from "12V" to "5V"

## 2b. STEP model

- [x] Re-exported to `../assets/Treadmill-Illumination-v2.step` with silkscreen, substituted models, and DNP parts excluded:

  ```
  kicad-cli pcb export step --subst-models --include-silkscreen --no-dnp --force \
    -o ../assets/Treadmill-Illumination-v2.step Treadmill-Illumination-2.kicad_pcb
  ```

- [x] Trimmer 3D model: `easyeda2kicad --3d --lcsc_id=C52034162` fetched the vendor model, saved as `potentiometer-C48997897.3dshapes/JER33X.step`. It's attached to the library footprint and to RV1/RV2 on the board with a y offset of +3.8 mm (the model's origin is the centre of its own pads), and a close-up render confirmed the alignment.
- Rendered pictures, if needed again:

  ```
  kicad-cli pcb render --quality high --side top -o top.png Treadmill-Illumination-2.kicad_pcb
  kicad-cli pcb render --quality high --perspective --rotate "-50,0,-30" -o iso.png Treadmill-Illumination-2.kicad_pcb
  ```

## 3. Regenerate production files

- [x] Regenerated with the commands below, using a local KiCad 10.0.1. `production/v2.zip` has the same 13 files as before (the `.gbrjob` is left out, as for v1.1); `production/netlist.ipc` came out identical.
- [x] Compared with the previous zip:
  - Silkscreen layers changed (the date)
  - Copper layers changed only by pour-outline vertices moving under 10 µm, from the zone refill
  - Mask, paste, outline and drill files are identical
- If you order assembly from JLCPCB, generate the BOM and CPL with the Fabrication Toolkit plugin (settings in `fabrication-toolkit-options.json`). It isn't needed for bare boards.

```
kicad-cli pcb drc --schematic-parity --refill-zones --save-board -o drc.rpt Treadmill-Illumination-2.kicad_pcb
kicad-cli pcb export gerbers --no-x2 --subtract-soldermask \
  -l F.Cu,B.Cu,F.Paste,B.Paste,F.Silkscreen,B.Silkscreen,F.Mask,B.Mask,Edge.Cuts -o out/ Treadmill-Illumination-2.kicad_pcb
kicad-cli pcb export drill --format excellon --excellon-separate-th --excellon-units mm \
  --excellon-zeros-format decimal --generate-map --map-format gerberx2 -o out/ Treadmill-Illumination-2.kicad_pcb
kicad-cli pcb export ipcd356 -o production/netlist.ipc Treadmill-Illumination-2.kicad_pcb
```

## 4. Bench test after assembly

Measure the LED current as the voltage across the 100 Ω resistor: **1 V = 10 mA**. Its leads are easy to probe because it's through-hole.

Before power-up:

- [ ] With no LEDs powered, the resistance from RV pin 1 to the wiper should span about 0–500 Ω as you turn it.
- [ ] No short between +5 V and GND at J2.
- [ ] **Cable polarity:** with the cable plugged into the supply but not into the board, measure that the wire in the housing position that mates with pin 1 (the square pad, `+5V`) is positive. Pre-made PH leads vary in polarity.

Powered from a regulated 5 V supply:

| Check | Expected | Stop if |
|-------|----------|---------|
| Voltage across R3/R4, trimmer at min resistance (brightest) | ~2.0 V (20 mA); up to ~2.5 V with low-Vf LEDs | > 2.8 V (28 mA) |
| Same, trimmer at max resistance (dimmest) | ~0.4 V (4 mA) | — |
| Brightness changes smoothly over the whole rotation | yes | a dead zone over most of the travel (suggests a wiring error) |
| Both channels at the same trimmer setting | within ~10% | — |
| Resistor and LEDs after 10 minutes at max | barely warm | hot to the touch |

- [ ] Note which rotation direction is brighter (brighter means the wiper moves toward pin 1). Optionally add an arrow to the silkscreen in the next revision.
- [ ] Balance: set the two trimmers so both sides of the ball look equally bright in the tracking camera, not by current. This compensates for LED-to-LED spread and placement.
- [ ] Optional: check the supply ripple at J2 with a scope. As a guide, 50 mV of ripple gives about 2% brightness modulation. A regulated USB supply should be well below that.

## 5. Reference numbers (for re-checking if parts change)

The model: two LEDs in series, Shockley fit with n·Vt ≈ 52 mV, 5 Ω series resistance per LED, Vf(20 mA) swept over the datasheet range, supply 4.75–5.25 V, trimmer at minimum resistance.

| Fixed R | LED | Vf(20 mA) range | Typical (max brightness) | Worst high | Worst low |
|---------|-----|-----------------|--------------------------|------------|-----------|
| 100 Ω | XL-1608HIRC-850 | 1.2–1.7 V (datasheet) | 20.0 mA | 27.4 mA (27.7 mA at 99 Ω) | 14.4 mA |
| 100 Ω | XL-1608HIRC-850 | 1.3–1.7 V (old assumption) | 20.0 mA | 25.7 mA | 14.4 mA |
| 100 Ω | HIR26-21C/L423 | typ 1.45 V, max 1.7 V | 18.7 mA | 23.0 mA | 14.4 mA |
| 82 Ω (rejected) | XL-1608HIRC-850 | 1.3–1.7 V | 23.7 mA | 30.5 mA | 17.0 mA |

At the 27.4 mA worst case: each LED dissipates 34 mW (rated 45 mW) and the resistor 75 mW (rated 250 mW). Minimum brightness with a 500 Ω trimmer is about 4 mA typical, and 5–6.5 mA with low-Vf LEDs, a high supply and the trimmer at −25%.

Quick hand check: I ≈ (V_supply − 2·Vf) / R_total. For example, (5.0 − 2 × 1.45) / 100 Ω ≈ 21 mA.

## 6. Finish

- [x] Vendor table filled in, and the LCSC numbers copied into the v2 BOM table in `../Treadmill-Illumination.md`.
- [ ] Add the order number and date to the Production files section of the docs, as for v1.1.
- [ ] **Delete this file** and push, then mark PR #50 ready for review.
