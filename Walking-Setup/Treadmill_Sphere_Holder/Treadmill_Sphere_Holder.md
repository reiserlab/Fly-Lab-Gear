---
title: Sphere holder
parent: Walking Setup
permalink: /walking/sphere-holder
nav_order: 2
---

# Holder for Fly Treadmill

[![Open GitHub folder]({{site.baseurl}}/assets/img/GitHub-Mark-32px.png) → to GitHub project folder](https://github.com/reiserlab/Component-Designs/tree/main/Walking-Setup/Treadmill_Sphere_Holder){:.ifr}
All versions of the "Treadmill Sphere Holder" need to be printed on a high density printer to avoid air leaks. This worked well on a Connex printer (see [production]({{site.baseurl}}/production)). Alternatively we printed it at normal density using ABS and the post-processed it by applying acetone to the outer layer of the sphere holder. At the moment we only have the design files in a proprietary format. We started converting it to FreeCAD, but at the moment they are not particularly easy to modify. Some of the print-ready `stl`-files are exported in imperial units and our [how-to guide]({{site.baseurl}}/how-to-build-inexpensive-treadmill#manufacture-3d-print) explains how to solve that issue (scale up by 25.4 or 2540%).

![Sphere holder]({{site.baseurl}}/assets/img/Walking-Setup/Treadmill_Sphere_Holder/Treadmill_Sphere_Holder_9mm-ball_180deg.png){: .ifr .pop}
`Treadmill_Sphere_Holder_9mm-ball_180deg.ipt`: This initial version worked fine, but required the connector to be fixed below the holder. This limits how the holder can be positioned.
{:.clear}

![1-armed sphere holder]({{site.baseurl}}/assets/img/Walking-Setup/Treadmill_Sphere_Holder/Treadmill_Sphere_Holder_9mm-ball_180deg_1mount.png){: .ifr .pop}
`Treadmill_Sphere_Holder_9mm-ball_180deg_1mount.ipt`: The one-armed version is a variance of that design that allows more flexible positioning, requires less space, and is cheaper in production. At the same time its more difficult to fixate and keep steady. The material at the screw mount holes is also thin enough that it would break upon forceful screw fixation.
{:.clear}

![Sphere holder with 90° inlet]({{site.baseurl}}/assets/img/Walking-Setup/Treadmill_Sphere_Holder/Treadmill_Sphere_Holder_9mm-ball_90deg.png){: .ifr .pop}
`Treadmill_Sphere_Holder_9mm-ball_90deg.ipt`: This version is an improvement, as it is generally more sturdy. Furthermore the hose is attached in a 90° angle to the direction of the airflow output. This means, it can be positioned directly on the base plate, allowing more compact setups. Also, our stand fits this version.
{:.clear}

![Sphere holder with 90° inlet]({{site.baseurl}}/assets/img/Walking-Setup/Treadmill_Sphere_Holder/Treadmill_Sphere_Holder_10mm-ball_90deg.png){: .ifr .pop}
`Treadmill_Sphere_Holder_10mm-ball_90deg.ipt`: The same as before, but for a 10mm sphere.
{:.clear}

![Sphere holder with 90° inlet and smaller footprint]({{site.baseurl}}/assets/img/Walking-Setup/Treadmill_Sphere_Holder/Treadmill_Sphere_Holder_9mm_imperial.png){: .ifr .pop}
`Treadmill_Sphere_Holder_9mm.FCStd`:  A small treadmill sphere holder for 9mm spheres with a smaller footprint. This one is designed in FreeCAD and comes either with an imperial (1 inch distance between screws) or metric footprint (see production folder for `.stl` files).
{:.clear}

![Sphere holder with 90° inlet]({{site.baseurl}}/assets/img/Walking-Setup/Treadmill_Sphere_Holder/Treadmill_Camera-base_Sphere-Holder_9mm-ball.png){: .ifr .pop}
`Treadmill_Camera-base_Sphere-Holder_9mm-ball.FCStd`: A two-part sphere holder that can sit on top of the camera. The camera is facing up in this component, and the sphere holder's "base" section surrounds the lens. The pressurized air intake can be fitted by drilling a hole into the base. The tip (top section with the cup for the 9mm sphere) also features a large enough opening for FicTrac (or other software) to track the sphere rotation from below. This design is ideal for constraint spaces and was contributed by [Zhengchang Lei](https://www.janelia.org/people/zhengchang-lei).
{:.clear}