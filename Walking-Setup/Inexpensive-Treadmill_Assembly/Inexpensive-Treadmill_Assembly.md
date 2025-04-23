---
title: Inexpensive Treadmill Assembly
parent: Walking Setup
permalink: /walking/inexpensive-treadmill
nav_order: 1
---

# Inexpensive Treadmill Assembly

[![Open GitHub folder]({{site.baseurl}}/assets/img/GitHub-Mark-32px.png) → to GitHub project folder](https://github.com/reiserlab/Fly-Lab-Gear/tree/main/Walking-Setup/Inexpensive-Treadmill_Assembly){:.ifr}
This project folder contains an assembly of components. It uses the [Assembly4 workbench](https://wiki.freecadweb.org/Assembly4_Workbench) in FreeCAD.


![Baseplate model]({{site.baseurl}}/assets/img/Walking-Setup/Inexpensive-Treadmill_Assembly/Inexpensive-Treadmill_Assembly.png){: .ifr .pop}
`Inexpensive-Treadmill_Assembly.FCStd`: This file contains all the different parts that we either build for the experimental setup, or that were acquired elsewhere. The `Figures.cam` contains the locations of the camera for generating the images used in the [manuscript about the Inexpensive Treadmill]({{site.baseurl}}/inexpensive-treadmill).

![Integrated Inexpensive Treadmill]({{site.baseurl}}/assets/img/Walking-Setup/Inexpensive-Treadmill_Assembly/Integrated-Inexpensive-Treadmill.png){: .ifr .pop .clear}
`Integrated-Inexpensive-Treadmill.FCStd`: In this design we integrated a camera holder for a [FLIR Firefly](https://www.flir.com/products/firefly-s/?model=FFY-U3-04S2M-S&vertical=machine%20vision&segment=iis), the sphere holder for a 9mm ball, three mount points for 3mm through-hole LEDs as illumination, and a mount point for a 70mm circular heater into one single, 3D printable design. The primary goal for this design is the tighter integration of all theses parts, not so much meeting the lowest possible price point. We used this setup in our lab, but also in teaching courses. Once printed, it is easy to deploy and a reliable tool for data collection. We designed this at the same time we built the improved [Tethering Station v2]({{site.baseurl}}/tether/station).
