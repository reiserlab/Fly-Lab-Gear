---
title: Baseplate
parent: Miscellaneous
permalink: /miscellaneous/baseplate
nav_order: 8
---

# Baseplate

[![Open GitHub folder]({{site.baseurl}}/assets/img/GitHub-Mark-32px.png) → to GitHub project folder](https://github.com/reiserlab/Component-Design/tree/main/Miscellaneous/Baseplate){:.ifr}
The Baseplate is the basis for the experimental setup. We are using this as a replacement for a 12"×12" Breadboard, such as the [Thorlabs MB12](https://www.thorlabs.com/thorproduct.cfm?partnumber=MB12). We lasercut our baseplate from acrylic, for example [1/4" cast acrylic](https://www.mcmaster.com/8505K754-8505K913/). This reduces the material cost to less than 10%. The weight is also drastically reduced. When laser-cutting the holes, they are not threaded. This allows easier friction mount (see lamp posts and different stands), but for more stable fixations a counter nut is required.

![Baseplate model]({{site.baseurl}}/assets/img/Miscellaneous/Baseplate/Baseplate.png){: .ifr .pop}
`Baseplate.FCStd`: The FreeCAD 3D model of the baseplate. This is a 11"×12" grid (because we accidentally cut off one row in our first example) with 6.3mm holes. The material is 8mm thick. This file can be used to represent the baseplate in a model or to export the sketch as a laser cutting file.

![]({{site.baseurl}}/assets/Miscellaneous/Baseplate/Baseplate_sketch.png){:.ifr .pop}
`baseplate_sketch.svg`: A vector graphics file that can be used to laser cut the baseplate. If you open the file in Inkscape, it has different layers for only cutting the holes, the outer edges, or both. If you don't have a laser cutter, you can print this file and use it as a blueprint when drilling holes in your base material.
{:.clear}

![]({{site.baseurl}}/assets/img/Miscellaneous/Baseplate/Heating-Base.png){:.ifr .pop}
`Heating-Base.FCStd`: A model of a small baseplate for the heating pad. We laser-cut this from some left-over acrylic (around 3mm thick), glued a 1/4" screw to the bottom, and used two nuts to fixate it underneath the treadmill. The Treadmill holder is wide enough to house this base plate. We used a [70mm circular heating pad](https://amazon.com/dp/B06XRCDRDK) with 12V supply and 13W and attached it to the base with glue.
{:.clear}