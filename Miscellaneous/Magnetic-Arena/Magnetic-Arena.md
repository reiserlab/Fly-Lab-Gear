---
title: Magnetic Arena
parent: Miscellaneous
permalink: /miscellaneous/magnetic-arena
nav_order: 20
---

# Magnetic Arena

[![Open GitHub folder]({{site.baseurl}}/assets/img/GitHub-Mark-32px.png) → to GitHub project folder](https://github.com/reiserlab/Fly-Lab-Gear/tree/main/Miscellaneous/Magnetic-Arena){:.ifr}
A behavioral arena laser-cut from acrylic. They are used in teaching setting with optogenetically stimulated fly lines. The arena consists of three stacked layers: baseplate, arena plate, and lid. The baseplate and arena plate are glued together while the lid is held by small disc magnets friction-fit into holes at each corner. The circular walking area is cut into the arena plate. The magnetic assembly makes the arenas fast to open, clean, and reassemble between experiments.

![Magnetic Arena top view]({{site.baseurl}}/assets/img/Miscellaneous/Magnetic-Arena/Magnetic-Arena_top.png){:.ifr .pop}
`Magnetic-Arena.FCStd`: FreeCAD source file containing all components of the arena assembly: baseplate, arena plate, lid, and corner magnet positions. Individual parts can be exported from here for laser cutting.
{:.clear}

## Production files

All laser-cutting files are in the `production/` folder.

- `Magnetic-Arena_combined.svg`: A combined layout of all three acrylic layers on a single sheet — the recommended file for cutting a small batch.
- `MagneticArena_12x12.svg`: Panel layout for cutting 16 arenas from 12×12" acrylic sheets in a single run. Use this for high-throughput production.

Individual DXF files are also provided for each layer:

| File | Component |
|------|-----------|
| `Magnetic-Arena-Baseplate.dxf` | Bottom layer |
| `Magnetic-Arena-arenaplate.dxf` | Middle layer with circular arena cutout |
| `Magnetic-Arena-lid.dxf` | Top layer |

`Mask.stl`: A 3D-printable mask component for the arena. Alternatively, this could be cut from dark acrylic.

## Magnet hole calibration

The corner holes must friction-fit the disc magnets tightly enough to hold the layers together without glue. Because the achieved hole diameter depends on the laser cutter, material, and cutting settings, we provide test files to dial in the correct diameter before cutting the full arena.

`Hole-Tests.FCStd` and `Hole-Tests_v2.FCStd`: FreeCAD source files with a range of hole diameters around the target size. The corresponding `production/Hole-Tests-BodySketch.svg` and `Hole-Tests-BodySketch.dxf` cut a row of test holes that can be checked against the actual magnets before committing to a full production run.
