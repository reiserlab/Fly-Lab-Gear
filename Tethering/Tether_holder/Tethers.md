---
title: Tethers
parent: Tethering
permalink: /tether/tethers
nav_order: 3
---

# Tethers

[![Open GitHub folder]({{site.baseurl}}/assets/img/GitHub-Mark-32px.png) → to GitHub project folder](https://github.com/reiserlab/Component-Designs/tree/main/Tethering/Tether_holder){:.ifr}
These designs are related to holding a fly in place, for example during an experiment. Here we list ideas to body fixate a fly. Take a look at [Flyplate]({{site.baseurl}}/physiology/flyplate), if you are looking for head fixation. In addition to the Luer lock holder, we are also using friction mounts on the [micro manipulator]({{site.baseurl}}/tether/micromanipulator) for the [blunt dispensing needles]({{site.baseurl}}/miscellaneous/dispensing-needle).

## Tether cone

![Pointy tether holder]({{site.baseurl}}/assets/img/Tethering/Tether_mount/Tether_holder_cone_tip-0.07.png){:.ifr .pop}
During behavioral experiments, the thorax of flies is tethered to a thin thread. The conic holders represent different approaches on how to mount the thin thread to material that is big enough for manual and robotic pickup. In one of the setups, we are using a magnet that has the inverse form of the wider cone, for example as shown in `Holder-cone_pointy.stl`. For this particular design, we tried to glue the thinner and pointy end to the fly. The design `Holder-cone_pointy_tip-0.07.stl` is intended for a similar use, and in fact the results are show here.
{:.clear}

![Fly tethered to a pointy holder]({{site.baseurl}}/assets/img/Tethering/Tether_mount/Tether_holder_cone_tip-0.07_form3_03_2019-11_fly.jpg){:.ifr .pop}
Just a quick explanation of the design – which should be similar for many of the other holder designs as well: The wide cone ending in a cylindrical form will be attached to counter piece with the inverse shape. Note that one part from the circumference is cut of. This keying of the form is used to orient the holder in its pickup form. The gap inside the cylinder can house a [1/16" thick, 1/4" OD magnet](https://www.mcmaster.com/5862k141). Using a static magnet has the advantage that an inverse electro-magnetic field can be used to push the holder away from the pickup. Instead, a metal piece can be used if only static magnetism is needed. The long and thin cylindrical share below the large and flat cylinder is required to provide space for the mount. Finally, the conic pointy end on the other side is where the fly is going to be attached. One of the weak spots of this design is that 3D printer use support material inside the magnet gap and through its closed form, it's not all washed out during the cleaning process. This problem is addressed in later designs, such as `Holder-cone_pointy_neck-wedge`. Here an additional but smaller opening on the opposite side of where the magnet is slipped in, allows better cleaning.
{:.clear}

![Neck wedge for drosophila]({{site.baseurl}}/assets/img/Tethering/Tether_mount/Tether_holder_cone_tip_neck-wedge.png){:.ifr .pop}
Talking about the `Holder-cone_pointy_neck-wedge`: this is an attempt to see how precise printers like the [Form 3]({{site.baseurl}}/production) can currently print. This never really worked, but we keep it to test future printers.

![Two-part tether with a placeholder for a thin metal thread]({{site.baseurl}}/assets/img/Tethering/Tether_mount/Tether_holder_flat-cone_hole-0.3mm.png){:.ifr .pop}
Similarly, a number of designs have a hole instead of the pointy end. These holes come at different diameters to account for different printing materials and leave just enough room, to glue a thinner metal thread into that gap. In addition to the cylindrical holes, the size and quality of which largely depends on the printer, printing material, and some environmental factors, `Holder-cone_flat_helical-cutout` uses a different way to form a holder for the tether: Similarly the steps in a spiral staircase, helical cutouts are situated around the center. Their overlap over different of these steps form a space that can be used to glue in the fly tether.
{:.clear}

![Adapter between Luer-mounts and robot holder]({{site.baseurl}}/assets/img/Tethering/Tether_mount/Adapter_Magnet_Luer.png){:.ifr .pop}
We also designed an adapter between blunt tip dispensing needles with a Luer lock and the magnet adapter. Based on the observation, that flies seem to behave ok in experiments when tethered to a [34 gauge dispensing needle](https://www.amazon.com/dp/B01FI9GKL0/). The design `Holder-Luer` is an adapter between the wide conic magnetic pickup and a [luer lock for the dispensing needles]({{site.baseurl}}/miscellaneous/dispensing-needle).

## Classic Tether

![Soldering hypodermic tubing and the contact pin together]({{site.baseurl}}/assets/img/Tethering/Tether_mount/Classic-tether_solder-base.jpg){:.ifr .pop}
The classic tether initially developed at the [Dickinson lab](https://dickinsonlab.caltech.edu/) is still being used in many flight experiments. Since we couldn't find a good explanation online, here our parts list and step-by-step guide on how to produce them.

For flight experiments, the tether is usually mounted to a brass rod. Depending on your setup, you can cut [0.25" diameter 464 brass rods](https://www.mcmaster.com/8970K52) to the length you require. Attach a [Socket Contact Gold Crimp 20-24 AWG (Digi-Key #A2161-ND)](https://www.digikey.com/short/7p098n9q) to the rod which will act as an adapter to the tether.

The tether is made from three parts that are soldered together. Using solder instead of glue allows for easier repairs and corrections by applying some heat, but in general glue should work, too. In order from the adapter on the brass rod to the location where the fly will be glued, the parts are:

- Pin Contact Gold Crimp 20-24 AWG Machined [(Digi-Key #A2160-ND)](https://www.digikey.com/short/db4bz91d)
- Stainless Steel 316 Hypodermic Tubing: 19 Gauge, 0.042" OD, 0.032" ID, 0.005" Wall, 12" Length [(MicroGroup #304H19TW)](https://www.microgroup.com/product-category/hypodermic_tubing/)
- Tungston wire 127µm diameter, 3" length, 100pc [(A-M Systems #716000)](https://www.a-msystems.com/p-728-tungsten-rod.aspx)

The hypodermic tubing needs to be cut to smaller pieces of 1" length. This requires a precision chop saw or miter saw, otherwise the tubing might get bent and is unusable at the cut end. In that case only two tethers can be made from one hypodermic tubing, the center 10" will be waste.

![Soldering the Tungsten wire to the hypodermic tubing]({{site.baseurl}}/assets/img/Tethering/Tether_mount/Classic-tether_solder-wire.jpg){:.ifr .pop}
The first image above shows a little contraption where the bottom clamp holds the same type of socket crimp that is used in the flight arenas at the end of the brass rods. In the picture it holds a contact pin and the top clamp holds the hypodermic tubing in a straight line while I am soldering both parts together. After this step inspect that the connection is straight and sturdy. Since it is soldered, you can correct it by reheating the connection.

In the second image the hypodermic tubing is exposed above the top clamp and the tungsten wire is already inserted into the tubing as far as possible. In the image I apply some solder to keep it in place. Finally, cut the tungsten wire to the length required in your setup.

### Alternative contraptions

![]({{site.baseurl}}/assets/img/Tethering/Tether_mount/Classic-tether_horizontal-contraption.jpg){:.ifr .pop}
Alternatively to the contraption shown in the images above, we have used other tools in the past. The purpose of all these devices is to center the hypodermic tube inside the pin crimp. The one shown here on the right has horizontal mounts for the tubing (on the left) and the pin (a crimp socket mounted to a brass rod). This is the traditional type that has been around for a long time. It has the disadvantage that the heated solder flows towards one side of the solder joint, creating an off-center weight. Both mounts are moved on a rail.

![]({{site.baseurl}}/assets/img/Tethering/Tether_mount/Classic-tether_vertical-contraption.jpg){:.ifr .pop}
This second alternative uses similar components, but places them in vertical line. This has the advantage of the solder flowing towards the pin, creating a more balanced pin. Furthermore soldering is easier done in this type of setup. Finally, this version uses a socket crimp glued inside a luer lock holder and can therefore double as an aid to solder tungsten wires to blunt tip dispensing needles.

The small contraption used in the images above uses the same principle as the vertical version, but uses two clamps to center the hypodermic tubing inside the pin. All three versions are meant as an inspiration of what you can build from the parts you have lying around. Please [send us your pictures]({{site.baseurl}}/about) if you have any other ideas.
