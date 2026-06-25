---
title: Micromanipulator
parent: Tethering
permalink: /tether/micromanipulator
nav_order: 5
---

# Micromanipulator

[![Open GitHub folder]({{site.baseurl}}/assets/img/GitHub-Mark-32px.png) → to GitHub project folder](https://github.com/reiserlab/Fly-Lab-Gear/tree/main/Tethering/MicroManipulator){:.ifr}
A fully 3D-printable three-axis linear micromanipulator optimized for simplicity and low cost. It serves two roles in the fly preparation workflow: at the [tethering station]({{site.baseurl}}/tether/station) to position a [dispensing needle]({{site.baseurl}}/miscellaneous/dispensing-needle) precisely on the fly's thorax, and in the experimental setup to lower the tethered fly onto the spherical treadmill.

The design grew out of early experiments with the [Open-Labware Micromanipulator]({{site.baseurl}}/miscellaneous/openlabware-manipulator). After printing that design and encountering assembly difficulties, we redesigned it from scratch in FreeCAD with simplified geometry, fewer parts, and no support material requirements.

## Design

![MicroManipulator]({{site.baseurl}}/assets/img/Tethering/MicroManipulator/MicroManipulator_Assembly_Figure2.png){:.ifr .pop}
Three independent sliding axes are each implemented as a rail and a carriage. The carriages translate along their rails by hand via printed handles. The arm, which holds the dispensing needle or tether, is a separate part and can be swapped between different configurations without reprinting the full assembly.

All structural parts are available as FreeCAD source files (`.FCStd`) and print-ready STL files in the `production/` folder.

## Arm variants
{:.clear}

Several arm geometries are provided for different use cases:

| File | Use case |
|------|----------|
| `Arm_TetherStation.stl` | Tethering station — reaches the fly in the sarcophagus |
| `Arm_Arena.stl` | Experimental setup — positions tethered fly on the sphere |
| `Arm_tilted_Arena.stl` | Arena variant with a tilted approach angle |
| `Arm_60.stl` | 60° approach angle |
| `Arm_110mm-20degree.stl` | 110 mm arm at +20°; longer reach with slight upward angle |
| `Arm_110mm--20degree.stl` | 110 mm arm at −20°; longer reach with slight downward angle |

## Inspiration and Alternatives

Design developed from experience with the [Open-Labware Micromanipulator]({{site.baseurl}}/miscellaneous/openlabware-manipulator) (BadenLab, [Thingiverse thing:239105](https://www.thingiverse.com/thing:239105)). The commercial [3-axis stage LD40-LM](https://a.co/d/fMeQiEK) is an alternative with metric mount points, used in the [Tethering Station v2]({{site.baseurl}}/tether/station).

## Stand for the Tethering Station

[![Open GitHub folder]({{site.baseurl}}/assets/img/GitHub-Mark-32px.png) → to GitHub project folder](https://github.com/reiserlab/Fly-Lab-Gear/tree/main/Tethering/Stand_MicroManipulator_Tethering){:.ifr}
A 3D-printed stand that positions the micromanipulator at the correct height and angle to reach the fly in the sarcophagus on the [tethering station]({{site.baseurl}}/tether/station). The stand keeps the manipulator stable during the delicate procedure of placing a tether on the fly's thorax.

A comparable stand for the experimental setup is described under [Stands]({{site.baseurl}}/walking/stands) in the Walking Setup section. The two stands differ in height and geometry to suit the different working positions of the tethering station versus the arena.

`Stand_MicroManipulator_Tethering.FCStd` is the FreeCAD source file. The print-ready STL is in `Production/Stand_MicroManipulator_Tethering.stl`.
