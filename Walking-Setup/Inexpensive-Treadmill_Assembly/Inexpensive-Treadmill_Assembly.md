---
title: Inexpensive Treadmill Assembly
parent: Walking Setup
permalink: /walking/inexpensive-treadmill
nav_order: 1
---

# Inexpensive Treadmill Assembly

[![Open GitHub folder]({{site.baseurl}}/assets/img/GitHub-Mark-32px.png) → to GitHub project folder](https://github.com/reiserlab/Fly-Lab-Gear/tree/main/Walking-Setup/Inexpensive-Treadmill_Assembly){:.ifr}
This project folder contains two types of treadmill design: a modular reference assembly that combines all separate components, and the Integrated Inexpensive Treadmill, which merges those components into a single 3D-printable body. Both use the [Assembly4 workbench](https://wiki.freecadweb.org/Assembly4_Workbench) in FreeCAD.

## Modular assembly

![Modular assembly model]({{site.baseurl}}/assets/img/Walking-Setup/Inexpensive-Treadmill_Assembly/Inexpensive-Treadmill_Assembly.png){: .ifr .pop}
`Inexpensive-Treadmill_Assembly.FCStd`: A reference assembly that combines the individual components described in the [Inexpensive Treadmill publication]({{site.baseurl}}/inexpensive-treadmill) — sphere holder, baseplate, lamp posts, micromanipulator, camera, and tablet — as separate parts positioned relative to each other. The `Figures.cam` file stores the camera positions used to generate the publication figures.

This assembly is useful for planning experiments and checking spatial relationships between components, but each part is still sourced, printed, and mounted individually.

## Integrated Inexpensive Treadmill
{:.clear}

![Integrated Inexpensive Treadmill]({{site.baseurl}}/assets/img/Walking-Setup/Inexpensive-Treadmill_Assembly/Integrated-Inexpensive-Treadmill.png){: .ifr .pop}
`Integrated-Inexpensive-Treadmill.FCStd`: A single 3D-printable body that consolidates the components that would otherwise be assembled separately from the baseplate:

- Camera holder for a [FLIR Firefly](https://www.flir.com/products/firefly-s/?model=FFY-U3-04S2M-S&vertical=machine%20vision&segment=iis) (USB3, global shutter)
- Sphere holder for a 9 mm ball
- Three mount points for 3 mm through-hole NIR LEDs
- Mount point for a 70 mm circular heating pad

By combining these into one print the setup becomes significantly easier to use: there are fewer parts to source and the relative positions of camera, sphere, and illumination are fixed and repeatable. The tradeoff is less flexibility: changing camera model or lens requires a new print. We used this version in the lab and in teaching courses where we target a single camera type and prioritize reliabililty . It was designed at the same time as [Tethering Station v2]({{site.baseurl}}/tether/station).

`Integrated-Inexpensive-Treadmill-Centered.FCStd` is a variant of the same design with the sphere holder positioned at the geometric center of the body, useful for symmetric visualizations.

### Variant A
{:.clear}

`Integrated-Inexpensive-Treadmill_variant-A.FCStd`: A newer iteration of the integrated design. The production STL for printing is `production/Integrated-Inexpensive-Treadmill_variant.stl`.
