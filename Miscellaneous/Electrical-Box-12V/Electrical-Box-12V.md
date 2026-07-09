---
title: Electrical Control Box (12 V)
parent: G6 Arena Integration
permalink: /g6/electrical-box
nav_order: 5
---

# Electrical Control Box (12 V)

[![Open GitHub folder]({{site.baseurl}}/assets/img/GitHub-Mark-32px.png) → to GitHub project folder](https://github.com/reiserlab/Fly-Lab-Gear/tree/main/Miscellaneous/Electrical-Box-12V){:.ifr}

The [G6 integration]({{site.baseurl}}/g6) has several loads that all run from 12 V: the heating pad, the optogenetic stimulation light, and the illumination panel. Rather than run a separate wall supply and loose wiring for each, we combine their 12 V power into a single laser-cut enclosure. The box gives every subsystem a common supply and keeps the wiring on the bench tidy and repeatable.

![12 V electrical control box]({{site.baseurl}}/assets/img/G6-Arena-Integration/Electrical-Box-12V/Electrical-Box-12V.png){:.ifr .pop}
The front panel carries the connectors and controls for the shared supply: an on/off switch for the optogenetic stimulation, barrel-jack-to-screw-terminal adapters for the incoming and outgoing 12 V, a lever power splitter that fans the supply out to the individual loads, and a BNC-to-screw-terminal breakout for the stimulation trigger signal. The box is cut from acrylic; the only source files are the vector cut layouts.
{:.clear}

## Production files

The laser-cutting files live directly in the folder (there is no `production/` subfolder). `electrical-ctrl-box.svg` is the recommended source for cutting.

| File | Purpose |
|------|---------|
| `electrical-ctrl-box.svg` | Laser-cut layout (recommended source) |
| `electrical-ctrl-box.dxf` | DXF export for other laser cutters |
| `electrical-ctrl-box.pdf` | Preview / reference sheet |
