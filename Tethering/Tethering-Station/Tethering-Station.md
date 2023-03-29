---
title: Tethering Station
parent: Tethering
permalink: /tether/station
nav_order: 1
---


# Tethering station

[![Open GitHub folder]({{site.baseurl}}/assets/img/GitHub-Mark-32px.png) → to GitHub project folder](https://github.com/reiserlab/Component-Designs/tree/main/Tethering/Tethering-Station){:.ifr}
The goal of tethering station is to keep the [heatsink and fan](https://www.adafruit.com/product/1335) at an angle, that allows easy access to the flies. For convenience we also wanted to integrate a hand rest and a mount point for a micromanipulator.

## Version 2

![Design of Tethering Station version 2]({{site.baseurl}}/assets/img/Tethering/Tethering-Station/Tethering-Station-v2_acrylic.png){:standalone .ifr .clear data-img-class="pop"}

`Tethering-Station-v2_acrylic_precut.FCStd`: For the second version of the Tethering Station we integrate an optical stereoscope and improve the overall stability. The FreeCAD file contains the model, while the different `production/Tethering-Station-v2*.svg` files in the GitHub project folder can be used for laser cutting the acrylic sheets.

The file `Tethering-Station-v2_print_Arm_Light_Mount.FCStd` contains designs to 3D print Luer lock compatible mounts for dispensing needles, with `production/Tethering-Station-v2*.stl` contain the files compatible with most 3D printers.

When we brought our first version of the Tethering Station to different labs and workshops, one of the biggest limitations was the working height of the different microscopes that were available at these places. Sometimes the Tethering Station would not fit under the microscope, other times it wasn't possible to get the sarcophagi in focus. To fix this, we integrated the commercially available Stereoscope [AmScope SE120](https://a.co/d/aBIOmef) into the Tethering Station.

![Tethering Station version 2 with AmScope SE120, thermoelectric cooler, and 3-axis stage (Image by Huai-Ti Lin)]({{site.baseurl}}/assets/img/Tethering/Tethering-Station/Tethering-Station-v2_photo_iso.jpg){:standalone .ifr data-img-class="pop"}

Furthermore, the exact size of the [heatsink](https://www.adafruit.com/product/1335) differed between batches that we ordered and slightly bigger ones would add physical stress to the acrylic to a point where it became weak enough to break. For the second version we adapted the tolerances of the Tethering Station to work with all sized of the heatsink we came across. Furthermore we increase the material thickness to around 6mm (or 0.25").

Finally, and while the Tethering Station can allow any type of Micromanipulator, we have used the commercially available [3 axis stage LD40-LM](https://a.co/d/fMeQiEK) with it's metric mount points in our setups.

These three major changes increase the overall price for the Tethering Station, but increase stability and allow fly tethering independent of existing microscopes and with nothing more than a 12V power source.

We designed this version at the same time we built the new [integrated Inexpensive Treadmill]({{site.baseurl}}/walking/inexpensive-treadmill).

## Version 1

![Design of Tethering Station version 1]({{site.baseurl}}/assets/img/Tethering/Tethering-Station/Tethering-Station-v1_acrylic_precut.png){:standalone .ifr data-img-class="pop"}

`Tethering-Station-v1_acrylic_precut.FCStd`: The initial version of the Tethering Station is designed for the use with a microscope or other type of magnification device (think camera with zoom lens or magnifying lens). It is designed for the heatsink and fan package available from [Adafruit](https://www.adafruit.com/product/1335) and includes a hand rest as well as the mount point for a micromanipulator with 1" spaced 0.25" screws. All six parts can be cut from flat materials (cast acrylic is a good choice) with a thickness of 0.125" (or 3mm). Although that applies to the base plate as well, we recommend a thicker material for more stability.
