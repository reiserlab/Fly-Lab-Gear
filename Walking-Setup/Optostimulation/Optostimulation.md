---
title: Optostimulation
parent: G6 Arena Integration
permalink: /g6/optostimulation
nav_order: 3
---

# Optostimulation

[![Open GitHub folder]({{site.baseurl}}/assets/img/GitHub-Mark-32px.png) → to GitHub project folder](https://github.com/reiserlab/Fly-Lab-Gear/tree/main/Walking-Setup/Optostimulation){:.ifr}

To deliver optogenetic stimulation to the walking fly, we added a light that can be aimed at the animal from above. The mount is a small rail system built from FDM-printed parts that attaches directly to the top G6 PCB, so the stimulation light is positioned relative to the fly and the rest of the [G6 arena]({{site.baseurl}}/g6) hardware. A carriage slides along the rail to set the position, and a light-guide holder aims the beam at the fly.

![Optostimulation rail]({{site.baseurl}}/assets/img/G6-Arena-Integration/Optostimulation/Optostimulation.jpeg){:.ifr .pop}
The light source is a Cree XLamp XP-E2 high-power LED on a star board, focused with a Carclo 20 mm tight-spot lens and driven at constant current by a LEDsupply BuckPuck driver. The printed rail holder, slider, and light guide let us aim this optic at the fly and lock it in place using thumb screws. See the [bill of materials]({{site.baseurl}}/g6) for the full electronics list.
{:.clear}

## Production files

Each part is printed on an FDM printer and provided as an `.stl` for printing and an `.stp` (STEP) for editing; there is no FreeCAD source ([file types]({{site.baseurl}}/file-types)).

| File | Component |
|------|-----------|
| `production/optostim-light-rail-holder.stl` / `.stp` | Mounts the rail to the PCB |
| `production/90Deg-Rail-Slider.stl` / `.stp` | Right-angle carriage that slides along the rail |
| `production/optostim-light-guide.stl` / `.stp` | Holds and aims the LED optic / light guide |
