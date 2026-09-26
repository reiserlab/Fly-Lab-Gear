# Treadmill Illumination v2: next steps before ordering

Working notes for finishing PR #50 on a local machine. **Delete this file before merging.**

Branch: `claude/treadmill-illumination-design-nbnnwy` (PR #50 → `treadmill-illumination-v2`).

## 0. Local setup (one time)

- [ ] **Install KiCad 10.0.x** from kicad.org, including the standard libraries (the default). The files are KiCad 10 format; KiCad 9 and older cannot open them.
- [ ] On first launch, if KiCad asks about the global symbol and footprint library tables, choose **"Copy default global table"**. J2, the LEDs and the resistors come from the standard libraries (`Connector_JST`, `LED_SMD`, `Resistor_THT`, `MountingHole`). The trimmer footprint comes from the project-local `potentiometer-C48997897.pretty`.
- [ ] Check out the branch:

  ```
  git fetch origin
  git checkout claude/treadmill-illumination-design-nbnnwy
  ```

- [ ] Open `Walking-Setup/Treadmill-Illumination/v2/Treadmill-Illumination-2.kicad_pro`.
- [ ] Where `kicad-cli` lives:
  - Linux: on the PATH
  - macOS: `/Applications/KiCad/KiCad.app/Contents/MacOS/kicad-cli`
  - Windows: `C:\Program Files\KiCad\10.0\bin\kicad-cli.exe`

## Status

Done in the PR:

- RV1/RV2 rewired as rheostats (pin 3 tied to the wiper) in the schematic and on the PCB
- R3/R4 set to 100 Ω and RV1/RV2 to 500 Ω
- J2 changed from a vertical screw terminal to a right-angle JST PH 2-pin (S2B-PH-K-S, C173752), with the cable exiting at the bottom board edge
- All 8 board-outline corners rounded with a 2 mm radius, including the 2 inside corners of the notch
- GND pour refilled, with isolated islands removed
- Production files regenerated
- Docs updated

Still open:

1. Vendor part numbers for four parts (the LCSC fields are blank)
2. Datasheet checks on the parts that stayed the same
3. A review in KiCad, and a decision on the version label
4. Re-exporting the STEP model (the committed one is out of date)
5. Regenerating production files if anything changes
6. A bench test after assembly

## 1. Vendor parts: choose and enter

For each part, record the LCSC number, the manufacturer part number, and the datasheet link in the table at the end of this section.

### R3, R4: 100 Ω axial resistor

- [ ] Value 100 Ω, ±1% metal film preferred (±5% is acceptable)
- [ ] **≥ ¼ W.** The worst case is 66 mW, so any ¼ W part has 4× margin.
- [ ] Fits the footprint `R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal`: body ≤ 6.3 mm long and ≤ 2.5 mm in diameter, leads bent to 7.62 mm (0.3") pitch. Standard ¼ W parts fit.
- [ ] Stock and lifecycle (not EOL)

### RV1, RV2: 500 Ω trimmer (code "501")

- [ ] **Same series and package as the current footprint** (`potentiometer-C48997897`, JIERR JER33X-1-13). Compare the land-pattern drawing of the 500 Ω part with the 1 kΩ part: pad positions relative to the footprint origin (pins 1 and 3 at x = ±1.0 mm, y = −2.2 mm; wiper pin 2 at x = 0, y = −5.4 mm) and pad sizes (pins 1 and 3: 1.2 × 1.2 mm; pin 2: 1.6 × 1.5 mm). The footprint is in `potentiometer-C48997897.pretty/`.
- [ ] Power ≥ 0.1 W. The worst case is under 20 mW.
- [ ] Single-turn, top-adjust, SMD
- [ ] **If no 500 Ω part exists in this footprint:** keeping 1 kΩ is an acceptable fallback. The range becomes about 2–20 mA, but most of the useful adjustment moves into the low-resistance end of the rotation. Don't change the footprint just for this.

### Parts that did not change: verify the datasheets

These numbers came from search summaries; I couldn't open the datasheets themselves.

- [ ] **D10, D11, D14, D15: Xinglight XL-1608HIRC-850 (C965885)**
  - IF(max) = 30 mA and Pd = 45 mW? The design assumes both.
  - Vf range at 20 mA: 1.3–1.7 V assumed. **If the minimum Vf is lower than 1.3 V, redo the worst-case current in section 5.**
  - **Lifecycle:** one distributor lists this part as EOL. If so, choose an alternative 0603 850 nm part with Vf ≥ 1.3 V at 20 mA and IF(max) ≥ 30 mA, or accept the risk for a small run.
- [ ] **D2, D3, D6, D7 (DNP alternative): Everlight HIR26-21C/L423/CT (C131273)**
  - IF(max) ≥ 30 mA? I couldn't verify this. The circuit can deliver up to 26 mA to this part.
  - Viewing angle. It has a dome lens, so expect a narrower beam than the 120° 0603.
  - **Land pattern:** this is a "1.6 mm round subminiature" package placed on a generic `LED_1206_3216Metric` footprint. Check the recommended land pattern in its datasheet, and its polarity marking, against the footprint.
- [ ] **J2: JST S2B-PH-K-S(LF)(SN), LCSC C173752** (changed from the vertical screw terminal to a right-angle JST PH)
  - Footprint: KiCad stock `Connector_JST:JST_PH_S2B-PH-K_1x02_P2.00mm_Horizontal`. Pins are at (127, 115.75) and (129, 115.75) mm, and the mating face is flush with the bottom board edge (y = 122 mm), so the cable exits downward in the board plane.
  - Confirm this orientation suits how the board is mounted on the treadmill: the plug needs room to insert below the board edge.
  - The rating (2 A) is far above the ~50 mA load.
  - Mating parts: PHR-2 housing and SPH-002T-P0.5S crimps (24–32 AWG), or a pre-crimped PH lead. Order a few.
  - Pin 1 is +5 V: the square pad, labelled `+5V` on the silkscreen. Pin 2 is GND.
  - The now-unused custom footprint library `power-terminal.pretty` and its `fp-lib-table` entry can be deleted.

### Enter the part numbers

1. In Eeschema, fill in the `LCSC` field on R3, R4, RV1 and RV2 (for example with the Symbol Fields Table).
2. **Tools → Update PCB from Schematic (F8).** Expect only field/property changes and no net changes. Stop if it reports net changes.
3. Save both files.

| Ref | Value | LCSC # | MPN | Datasheet checked |
|-----|-------|--------|-----|-------------------|
| R3, R4 | 100 Ω, ¼ W | | | [ ] |
| RV1, RV2 | 500 Ω | | | [ ] |
| D10, D11, D14, D15 | XL-1608HIRC-850 | C965885 | | [ ] |
| D2, D3, D6, D7 (DNP) | HIR26-21C/L423/CT | C131273 | | [ ] |
| J2 | JST PH 2-pin right-angle | C173752 | S2B-PH-K-S(LF)(SN) | [ ] |
| (cable) | PH housing + crimps | | PHR-2 + SPH-002T-P0.5S | [ ] |

## 2. Review in KiCad

- [ ] **ERC** in the schematic editor (Inspect → Electrical Rules Checker → Run ERC).
  - Expected: no connection errors.
  - Two `power_pin_not_driven` warnings are expected. They were already there; there's no PWR_FLAG.
  - Library warnings mean the global library tables aren't set up (see section 0).
- [ ] In the PCB editor, press **B** (Edit → Fill All Zones).
- [ ] **DRC** (Inspect → Design Rules Checker), with "Test for parity between PCB and schematic" enabled. Expected result:
  - 0 unconnected items
  - 0 schematic parity issues
  - 13 silkscreen warnings:
    - 3 `silk_overlap` and 4 `silk_over_copper`, which were already in the original board
    - 6 `silk_edge_clearance` on J2, because its outline reaches the flush board edge. The fab clips that silkscreen automatically.
  - Anything else is new. Look into it before ordering.
- [ ] Visually check around RV1 and RV2: the new 0.5 mm trace from pad 3 to pad 2 (the wiper), and that the GND pour clears it.
- [ ] **3D viewer** (View → 3D Viewer, Alt+3). Check:
  - J2's opening faces the bottom board edge.
  - The rounded corners, including the two inside the notch.
  - The LEDs sit on the 0603 pads.
  - RV1/RV2 will be missing: their custom footprint has no 3D model (see section 2b).
- [ ] Rounded outline, 2 mm radius. Check the fit against the treadmill mount:
  - The notch's two inside corners now have 2 mm fillets. These add up to about 0.8 mm of board material at each inside corner of the notch.
  - At the bottom-right corner, J2's plastic front corner overhangs the rounded edge by about 0.24 mm.
  - The outline is on Edge.Cuts; the dimension annotations on User.Drawings still show the overall sizes.
- [ ] **Version label.** If any boards were ordered from the 2026-09-25 Gerbers, change the silkscreen `v2.0 2026-09-25` (front and back) to `v2.1 <date>`.
- [ ] Optional: fix the schematic title block, which still says `rev v1.1`, date 2026-06-22.
- [ ] Optional: the +5 V zone on B.Cu is named "12V". This is cosmetic.

## 2b. Re-export the STEP model and view it

The committed `../assets/Treadmill-Illumination-v2.step` is out of date. It predates this PR (it still shows 11.9 mm resistors and the screw terminal). The build container had no 3D models, so I couldn't regenerate it.

- [ ] **GUI:** PCB editor → File → Export → STEP. Settings:
  - Output: `../assets/Treadmill-Illumination-v2.step`
  - Tick **Export silkscreen**. The original export had it.
  - Tick "Substitute similarly named models".
  - Optional: exclude "Do not populate" components. The old file included the unfitted 1206 LEDs; excluding them shows the board as actually built.
- [ ] **Or from the command line**, in this `v2/` folder:

  ```
  kicad-cli pcb export step --subst-models --include-silkscreen --no-dnp --force \
    -o ../assets/Treadmill-Illumination-v2.step Treadmill-Illumination-2.kicad_pcb
  ```

  Leave out `--no-dnp` to keep the 1206 alternatives in the model.
- [ ] Open the STEP in a CAD tool (FreeCAD, Fusion, Onshape) and check the fit against the treadmill assembly. Check J2's plug clearance below the bottom edge, and the notch corners.
- [ ] Optional: quick rendered pictures, no CAD viewer needed:

  ```
  kicad-cli pcb render --quality high --side top -o top.png Treadmill-Illumination-2.kicad_pcb
  kicad-cli pcb render --quality high --rotate "-45,0,45" --perspective -o iso.png Treadmill-Illumination-2.kicad_pcb
  ```

- [ ] Optional: **3D model for the trimmers.** `potentiometer-C48997897.pretty` has no model, so RV1/RV2 are missing from the viewer and the STEP. The old STEP didn't have them either.
  1. `pip install easyeda2kicad`
  2. `easyeda2kicad --3d --lcsc_id=C48997897` fetches the vendor model.
  3. Attach it in the footprint's Properties → 3D Models, check its alignment in the 3D preview, and save the footprint back into the project library.
  4. Re-export the STEP.
- [ ] Commit the new STEP:

  ```
  git add ../assets/Treadmill-Illumination-v2.step
  git commit -m "Re-export v2 STEP"
  git push
  ```

## 3. Regenerate production files (only if anything changed in step 1 or 2)

Use the same tool as the original package, the **Fabrication Toolkit** plugin. Its settings are in `fabrication-toolkit-options.json`: archive name `v2`, DNP excluded.

- [ ] Run the plugin. It writes `production/v2.zip` and `production/netlist.ipc`.
- [ ] If you order assembly from JLCPCB, keep the BOM and CPL CSVs the plugin produces, as for v1.1.
- [ ] Sanity check: open the new zip and the PR's `production/v2.zip` in a Gerber viewer (KiCad's GerbView works). Only the layers you intentionally changed should differ.

What I ran, as a cross-check; you don't need it if you use the plugin. It uses Docker. With a local KiCad 10, drop the `$RUN` prefix and call `kicad-cli` directly.

```
IMG=kicad/kicad:10.0
RUN="docker run --rm -u $(id -u):$(id -g) -e HOME=/tmp -v $PWD:/w -w /w $IMG"
$RUN kicad-cli sch erc -o erc.rpt Treadmill-Illumination-2.kicad_sch
$RUN kicad-cli pcb drc --schematic-parity --refill-zones --save-board -o drc.rpt Treadmill-Illumination-2.kicad_pcb
$RUN kicad-cli pcb export gerbers --no-x2 --subtract-soldermask \
  -l F.Cu,B.Cu,F.Paste,B.Paste,F.Silkscreen,B.Silkscreen,F.Mask,B.Mask,Edge.Cuts -o out/ Treadmill-Illumination-2.kicad_pcb
$RUN kicad-cli pcb export drill --format excellon --excellon-separate-th --excellon-units mm \
  --excellon-zeros-format decimal --generate-map --map-format gerberx2 -o out/ Treadmill-Illumination-2.kicad_pcb
$RUN kicad-cli pcb export ipcd356 -o production/netlist.ipc Treadmill-Illumination-2.kicad_pcb
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
| Voltage across R3/R4, trimmer at min resistance (brightest) | ~2.0 V (20 mA) | > 2.6 V (26 mA) |
| Same, trimmer at max resistance (dimmest) | ~0.4 V (4 mA) | — |
| Brightness changes smoothly over the whole rotation | yes | a dead zone over most of the travel (suggests a wiring error) |
| Both channels at the same trimmer setting | within ~10% | — |
| Resistor and LEDs after 10 minutes at max | barely warm | hot to the touch |

- [ ] Note which rotation direction is brighter (brighter means the wiper moves toward pin 1). Optionally add an arrow to the silkscreen in the next revision.
- [ ] Balance: set the two trimmers so both sides of the ball look equally bright in the tracking camera, not by current. This compensates for LED-to-LED spread and placement.
- [ ] Optional: check the supply ripple at J2 with a scope. As a guide, 50 mV of ripple gives about 2% brightness modulation. A regulated USB supply should be well below that.

## 5. Reference numbers (for re-checking if parts change)

The model: two LEDs in series, Shockley fit with n·Vt ≈ 52 mV, 5 Ω series resistance, Vf(20 mA) swept 1.3–1.7 V, supply 4.75–5.25 V.

| Fixed R | LED | Typical (max brightness) | Worst high | Worst low |
|---------|-----|--------------------------|------------|-----------|
| 100 Ω | XL-1608HIRC-850 | 20.0 mA | 25.7 mA | 14.4 mA |
| 100 Ω | HIR26-21C/L423 | 18.7 mA | 23.0 mA | 14.4 mA |
| 82 Ω (rejected) | XL-1608HIRC-850 | 23.7 mA | 30.5 mA | 17.0 mA |

Quick hand check: I ≈ (V_supply − 2·Vf) / R_total. For example, (5.0 − 2 × 1.45) / 100 Ω ≈ 21 mA.

## 6. Finish

- [ ] Fill in the vendor table above, then copy the final LCSC numbers into the v2 BOM table in `../Treadmill-Illumination.md`.
- [ ] Add the order number and date to the Production files section of the docs, as for v1.1.
- [ ] **Delete this file** and push, then mark PR #50 ready for review.
