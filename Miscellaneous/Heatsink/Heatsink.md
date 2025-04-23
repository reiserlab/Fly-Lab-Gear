---
title: Heatsink
parent: Miscellaneous
permalink: /miscellaneous/heatsink
nav_order: 5
---

# Heatsink

[![Open GitHub folder]({{site.baseurl}}/assets/img/GitHub-Mark-32px.png) → to GitHub project folder](https://github.com/reiserlab/Fly-Lab-Gear/tree/main/Miscellaneous/Heatsink){:.ifr}
For the tethering stage we use a [readily available](https://www.adafruit.com/product/1335) combination of a heatsink with a fan and Peltier element. The files here are preliminary models of these components and might get used in 3D assemblies.

![Model of the Fan casing]({{site.baseurl}}/assets/img/Miscellaneous/Heatsink/Fan.png){: .ifr .pop}
`Fan.FCStd`: The outer body of the fan, which is mounted under the heatsink. Measurements are taken from an actual fan and should be up to scale.
{:.clear}

![Model of the fan propellor]({{site.baseurl}}/assets/img/Miscellaneous/Heatsink/FanPropeller.png){: .ifr .pop}
`FanPropeller.FCStd`: An attempt to model the fan propeller. This is not really necessary for functionality test, would be nice for assemblies to demonstrate how the tethering station will look. The Propellor should fit inside the fan casing. Measurements are taken from an actual fan, but might be slightly off.
{:.clear}

![Model of the fan protector]({{site.baseurl}}/assets/img/Miscellaneous/Heatsink/FanProtector.png){: .ifr .pop}
`FanProtector.FCStd`: The model of a fan protector. Only needed for realistic visualization. The measurments are taken from a real protector, adding this below the heatsink and the fan, would give an realistic estimation of the actual height of the assembly.
{:.clear}

![Heatsink model]({{site.baseurl}}/assets/img/Miscellaneous/Heatsink/Heatsink_90x90.png){: .ifr .pop}
`Heatsink_90x90.FCStd`: Model of the aluminum heat sink. In a real tethering station, the heat sink would be flipped and the smooth surface (currently not visible in the picture) would contain the Peltier element. The fan would be mounted below the heatsink. At the very bottom would be the protector.
{:.clear}
