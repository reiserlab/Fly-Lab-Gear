---
title: Sarcophagus
parent: Tethering
permalink: /tether/sarcophagus
nav_order: 2
---

# Plate-Sarcophagus

Tethering flies to a thin rod under a microscope requires practice – and the right equipment. Here we share some examples for equipment that has been used in the lab, but also some ideas and prototypes on what could be useful.

Flies are immobilized by low temperatures, for example by a cold metal plate under the microscope. The temperature of the metal plate can be controlled by a peltier element and a temperature sensor. The heat from the differential temperature of the Peltier element is either transported off by a powerful and expensive coolant-based system with a bath circulator (chiller), or via a heat sink and fan.

## 3D printed sarcophagus

[![Open GitHub folder]({{site.baseurl}}/assets/img/GitHub-Mark-32px.png) → to GitHub project folder](https://github.com/reiserlab/Fly-Lab-Gear/tree/main/Tethering/Sarcophagus_print){:.ifr}
For a teaching course, we prototyped a 3D printed version of the sarcophagus to explore if it was possible to produce a considerably cheaper version that works good enough for behavioral experiments. As a cooling device we used the readily available [Peltier mounted on a heatsink from Adafruit](https://www.adafruit.com/product/1335). Even in a warm environment of around 30°C the surface was cooled to below freezing. Our design of the [Sarcophagus platform](production/Sarcophagus_platform_15.stl) is small enough to go on top of this Peltier element and still have space for a few immobilized flies on a sorting area shown as well as sarcophagus of different dimensions. We attach the 3D printed sarcophagus to the surface of the Peltier element with [thermal adhesive tape](https://www.adafruit.com/product/1467).

![cooling plate with 15 differently sized sarcophagi]({{site.baseurl}}/assets/img/Tethering/Sarcophagus/Sarcophagus_platform_15.png){:.ifr .pop}
`Sarcophagus_platform_15.FCStd`: We printed this design on with different materials (including ABS and resins) and with different material densities. We then immobilized flies by placing their vials in a container of ice until they stopped moving and positioned individual flies in the different printouts. The flies in the low-density prints were the first ones able to climb out of their groove in less than two minutes. Independent of the material, the flies in the high-density prints stayed in place considerably longer, up to 10 minutes. This gives enough time to tether a fly and we were able to use the 3D printed platforms for the teaching course.

## Machined Brass Sarcophagus

[![Open GitHub folder]({{site.baseurl}}/assets/img/GitHub-Mark-32px.png) → to GitHub project folder](https://github.com/reiserlab/Fly-Lab-Gear/tree/main/Tethering/Sarcophagus_machined){:.ifr}
Original design by Tanya Tabachnik <tt2564@columbia.edu> around June 2011. She was Lead Mechanical Engineer at Janelia by the time. In August 2020, Melanie Basnak sent us a version in a more accessible file format (STEP and STL), that also solved some discrepancies between model and technical drawing.

![Two versions of the machined sarcophagus]({{site.baseurl}}/assets/img/Tethering/Sarcophagus/machined-sarcophagus-versions.jpg){:.ifr .pop}
There are at least two versions of the machined brass sarcophagus, small and large. About 60% of the machined sarcophagi are "small", 40% "large".
The "small" version, for which we share the drawings below, uses 2-56 screws to hold the inlet inside the body. Set screws [2-56 with 1/4"](https://www.mcmaster.com/92311A077/) should work. The "large" version uses screws with a 4-40 thread. Set screws are again a good option, but in the picture and in the lab we often use [plastic head thumb screw 21/32" long with 4-40 thread](https://www.mcmaster.com/98704A120/). The tube fitting for the inlay has the same thread in both versions (see below).

![Machined Sarcophagus assembly]({{site.baseurl}}/assets/img/Tethering/Sarcophagus/Cooling_Plate-assembly.png){:.ifr .pop}
During the tethering process, flies are held in place by a groove, or sarcophagus, in a small brass block. This small brass block is held in an angled position by a bigger metal body. The smaller block with the groove is machined separately to create different grooves for different applications and animals. The assembly of body and block with sarcophagus looks as follows and is described in the `Cooling_Plate-assembly.iam` file (Part number JF-MR-FS0010).
{:.clear}

![Machined Sarcophagus body]({{site.baseurl}}/assets/img/Tethering/Sarcophagus/Cooling_Plate-body.png){:.ifr .pop}
The bounding box of the body is about 3.8×7.0×3.2cm³ (width×height×depth). The files starting with `Cooling_Plate-body.i*` contain the initial technical drawings and CAD files for this part (Part number JF-MR-FS0006). `Cooling_Plate-*.stp` are minor updates, solving discrepancies between drawing and model.
{:.clear}

![Machined Sarcophagus inlay]({{site.baseurl}}/assets/img/Tethering/Sarcophagus/Cooling_Plate-inlay.png){:.ifr .pop}
The inner part is within a bounding box of 0.8×0.7×2.9cm³ (width×height×depth). The sarcophagus in the files `Cooling_Plate-inlay.*` (Part number JF-MR-FS0007) have little holes on the bottom of the groove. These holes are connected to a bigger intake which can be used to create an negative pressure below the animal. Purely for tethering, this is usually not necessary --- the shape of the sarcophagus is constraining the immobilized animal good enough. The additional fixation through vacuum with a 10-32 thread is helpful if additional manipulations with higher precision are conducted. Tube fittings like [this one](https://www.mcmaster.com/2844K13/) for and ID of 1/8" should fit.
{:.clear}

### Source

* original design: [Tanya Tabachnik](https://zuckermaninstitute.columbia.edu/tabachnik)
* step and stl files: [Melanie Basnak](https://github.com/mbasnak)
