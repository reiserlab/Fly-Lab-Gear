---
title: G6 Arena Integration
has_children: true
nav_order: 15
has_toc: false
permalink: /g6
---

# G6 Arena Integration

We adapted our [Inexpensive Treadmill]({{site.baseurl}}/walking/inexpensive-treadmill) walking setup so that a tethered, walking *Drosophila* sits inside a [G6 modular LED arena](https://reiserlab.github.io/Modular-LED-Display/G6/){:target="_blank"}. The G6 arena surrounds the fly with programmable visual stimuli for closed-loop experiments, which meant the treadmill, camera, and illumination all had to be raised to the arena's working height and the whole stack had to be supported without loading the display panels.

This section collects the components we designed or modified for that integration: a taller fly holder, a taller resin-printed integrated camera-and-treadmill, a PCB-mounted optogenetic stimulation rail, load-bearing posts between the arena panels, and a consolidated 12 V electrical control box. Near-infrared illumination for the FicTrac camera is provided by our [Illumination PCB]({{site.baseurl}}/walking/illumination-pcb). A complete bill of materials (BOM) listing all components required for the G6 integrated walking setup is available as a [CSV download]({{site.baseurl}}/assets/data/G6-Integration-Bill-of-Materials.csv).

All of the new mechanical parts are provided as **STL** files for 3D printing together with **STP/STEP** files for editing in other CAD software. Unlike most parts on this site, they have no FreeCAD source: they were not designed in FreeCAD, so the parametric source is not available (see [file types]({{site.baseurl}}/file-types)).

## [Fly Holder]({{site.baseurl}}/g6/fly-holder)

[![Fly holder stand and arms]({{site.baseurl}}/assets/img/G6-Arena-Integration/Fly-Holder/Fly-Holder.png){:.ifr}]({{site.baseurl}}/g6/fly-holder)
A taller and longer FDM-printed stand and arm that position the tethered fly over the ball at the raised G6 working height.

## [G6 Integrated Treadmill]({{site.baseurl}}/g6/treadmill)

[![G6 integrated camera and treadmill]({{site.baseurl}}/assets/img/G6-Arena-Integration/G6-Integrated-Treadmill/G6-Integrated-Treadmill.png){:.ifr}]({{site.baseurl}}/g6/treadmill)
A taller, resin-printed variant of the [Integrated Inexpensive Treadmill]({{site.baseurl}}/walking/inexpensive-treadmill#integrated-inexpensive-treadmill) that lifts the camera, sphere, and illumination to sit inside the arena.

## [Optostimulation]({{site.baseurl}}/g6/optostimulation)

[![Optostimulation rail]({{site.baseurl}}/assets/img/G6-Arena-Integration/Optostimulation/Optostimulation.jpg){:.ifr}]({{site.baseurl}}/g6/optostimulation)
A PCB-mounted rail system, made from FDM-printed components, that positions an optogenetic stimulation light over the fly.

## [Panel Support Posts]({{site.baseurl}}/g6/panel-spacers)

[![Panel support posts]({{site.baseurl}}/assets/img/G6-Arena-Integration/G6-Spacer/G6-Spacer.png){:.ifr}]({{site.baseurl}}/g6/panel-spacers)
FDM-printed posts that carry the mass mounted on top of the setup between the G6 top and bottom panels, so the load is not borne by the display panels alone.

## [Electrical Control Box (12 V)]({{site.baseurl}}/g6/electrical-box)

[![12 V electrical control box]({{site.baseurl}}/assets/img/G6-Arena-Integration/Electrical-Box-12V/Electrical-Box-12V.jpg){:.ifr}]({{site.baseurl}}/g6/electrical-box)
A laser-cut box that combines the 12 V power supplies for the heater, optostimulation, and illumination panel into a single enclosure.

## [Illumination PCB]({{site.baseurl}}/walking/illumination-pcb)

[![Illumination PCB]({{site.baseurl}}/Walking-Setup/Treadmill-Illumination/assets/Treadmill-Illumination_font.png){:.ifr}]({{site.baseurl}}/walking/illumination-pcb)
Near-infrared illumination of the sphere for optical tracking is provided by our two-channel [Treadmill Illumination PCB]({{site.baseurl}}/walking/illumination-pcb), which mounts to the integrated treadmill and runs from the same 12 V supply as the rest of the setup.
{:.clear}

---

The base setup these parts extend is documented under [Inexpensive Treadmill Assembly]({{site.baseurl}}/walking/inexpensive-treadmill). For the arena itself, see the [G6 modular LED display project](https://reiserlab.github.io/Modular-LED-Display/G6/){:target="_blank"}.
