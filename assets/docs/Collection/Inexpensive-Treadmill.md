---
title: Inexpensive Treadmill
parent: Collections
permalink: /inexpensive-treadmill
nav_order: 1
---

# Inexpensive Treadmill

![Title page of manuscript]({{site.baseurl}}/assets/img/Collection/title.png){:.ifr .pop}
"An inexpensive, high-precision, modular spherical treadmill setup optimized for *Drosophila* experiments" is a manuscript Frank Loesche and Michael B. Reiser submitted to the research topic "[Modern Methods in Neuroethology](https://www.frontiersin.org/research-topics/12605/modern-methods-in-neuroethology)" for "[Frontiers in Behavioral Neuroscience](https://www.frontiersin.org/journals/behavioral-neuroscience)" ([bioRxiv preprint](https://www.biorxiv.org/content/10.1101/2021.04.29.442008v1) at <https://doi.org/10.1101/2021.04.29.442008>). We developed a range of new components for this "Inexpensive Treadmill" submission. In this collection we name the components used in the manuscript, refer to their detailed pages, and add information that are outside the scope of a scientific publication.

## Fly Handling

### [Funnel]({{site.baseurl}}/tether/funnels)

[![Funnel 3]({{site.baseurl}}/assets/img/Tethering/Funnels/Funnel_fly-vial-to-12mm-tube.png){:.ifr}]({{site.baseurl}}/tether/funnels)
For the experiments in the "Inexpensive Treadmill" manuscript, we used *Drosophila melanogaster* reared in [fly vials](https://flystuff.com/drosophila-products/vials/). These are 95×25mm translucent polypropylene tubes filled with about 20mm of cornmeal based fly food. Before the experiment we transfer a group of flies to a fly vial without food. We [cold anesthetize](https://doi.org/10.1242/jeb.098442) the flies, as the chill-coma [rapidly and reversibly immobilizes](https://doi.org/10.1086/320429) the animals. For the "Inexpensive Treadmill", we transfer the flies to [12mm test tubes](https://en.wikipedia.org/wiki/Test_tube#Biosciences) which we keep on ice for about 5 minutes. For transferring flies between different tubes with 25mm or 12mm diameter, we use a selection of [3D printed funnels]({{site.baseurl}}/tether/funnels).

### Flypicker

![Different suction fly picker]({{site.baseurl}}/assets/img/Tethering/Flypicker/Flypickers.jpg){:.ifr .pop}
To move individual flies, we use so called "fly pickers". With those pen-sized devices we lift flies through suction: a weak partial vacuum inside the device holds the anesthetized fly in place without injuring them. Similar devices are used in microelectronics to place small components during PCB assembly and we have used commercial devices from this industry in the past (top image). For the "Inexpensive Treadmill" we improvised a similar device using a plastic transfer pipette, a few Luer connectors, and either a heat shrink tube (center image) or a one-way tip from a pipette (bottom image). <!-- TODO: add page and description on how to produce this -->

## Tethering Station

We use chill coma to immobilize flies during body-fixation. For the inexpensive treadmill setup, we use an air cooled heat sink with a fan that cools down a small Peltier element. On top of the peltier element we have a cooling plate. A blunt tip dispensing needle, which acts as a tether, is positioned on the thorax of the fly with a micromanipulator.

### [Cooling plate with sarcophagi]({{site.baseurl}}/tether/sarcophagus)

[![cooling plate with 15 differently sized sarcophagi]({{site.baseurl}}/assets/img/Tethering/Sarcophagus/Sarcophagus_platform_15.png){:.ifr}]({{site.baseurl}}/tether/sarcophagus)
During tethering flies are held in an upright position by the cylindrical shape of a "sarcophagus". Our current design of the cooling plate has room for 15 different sarcophagi for different insect body sizes and with more or less 3D printed material between the Peltier element and the insect.

### [Micro Manipulator]({{site.baseurl}}/tether/micromanipulator)

[![MicroManipualtor]({{site.baseurl}}/assets/img/Tethering/MicroManipulator/MicroManipulator_Assembly_Figure2.png){:.ifr}]({{site.baseurl}}/tether/micromanipulator)
The blunt tip dispensing needle, aka tether, needs to be placed on the fly's thorax at high precision. We achieve fine-grained translational movement of the tether in three dimensions through a 3-axis micro manipulator.

### [Hand rest]({{site.baseurl}}/tether/station)

[![Tethering Station built from laser cut acrylic plates]({{site.baseurl}}/assets/img/Tethering/Tethering-Station/Tethering-Station_cut_simplified.png){:.ifr}]({{site.baseurl}}/tether/station)
All elements of the tethering station are held in place by the hand rest. This part is the fancy version of sloping the heat sink by unscrewing two of the screws. It is optional and laser-cut from an acrylic sheet.

## Experimental setup

The experimental setup consists of several components. In this modular setup, each of the components can be exchanged with another part without impairing the performance of the system.

### [Baseplate]({{site.baseurl}}/miscellaneous/baseplate)

[![Baseplate model]({{site.baseurl}}/assets/img/Miscellaneous/Baseplate/Baseplate.png){: .ifr}]({{site.baseurl}}/miscellaneous/baseplate)
We laser-cut our own baseplate from an acrylic sheet. That is less expensive, lighter, and provides more flexibility.

### [Treadmill]({{site.baseurl}}/walking/sphere-holder)

[![Sphere holder with 90° inlet]({{site.baseurl}}/assets/img/Walking-Setup/Treadmill_Sphere_Holder/Treadmill_Sphere_Holder_9mm-ball_90deg.png){: .ifr}]({{site.baseurl}}/walking/sphere-holder)
The Treadmill itself is sphere floating on an air stream. The 3D printed sphere holder keeps the sphere in place. 

### [Camera]({{site.baseurl}}/miscellaneous/ps3-eye)

[![Model of the PS3 Eye camera]({{site.baseurl}}/assets/img/Miscellaneous/PS3-Eye/PS3-Eye.png){: .ifr}]({{site.baseurl}}/miscellaneous/ps3-eye)
The camera based rotation tracking with the software [FicTrac](https://github.com/rjdmoore/fictrac) is robust. It requires a camera with low resolution but high frame rates. In our setup we modified a Playstation 3 Eye camera to work with near infrared (NIR) illumination and at >180fps.

### [Illumination]({{site.baseurl}}/walking/illumination)

[![Set of lamps]({{site.baseurl}}/assets/img/Walking-Setup/Lamp_LED_5mm/illumination-lamps.png){:.ifr}]({{site.baseurl}}/walking/illumination)
We use 5mm LEDs in the NIR spectrum. To avoid light pollution and improve light placement, we 3D printed light shades.

### [Micro Manipulator]({{site.baseurl}}/tether/micromanipulator)

[![MicroManipualtor]({{site.baseurl}}/assets/img/Tethering/MicroManipulator/MicroManipulator_Assembly_Figure2.png){:.ifr}]({{site.baseurl}}/tether/micromanipulator)
To position the tethered fly on the spherical treadmill, we use the same type of micro manipulator as for the tethering procedure.

### [Display]({{site.baseurl}}/miscellaneous/tablet)

[![Model of a 7" tablet]({{site.baseurl}}/assets/img/Miscellaneous/Tablet/FireTablet.png){: .ifr}]({{site.baseurl}}/miscellaneous/tablet)
In our setup, we use an inexpensive 7" tablet for stimulus presentation. We developed a client-server software "FlyFlix" to stream stimuli to a client in the tablet's web browser.

### [Heat pad]({{site.baseurl}}/miscellaneous/baseplate)

[![Heating plate]({{site.baseurl}}/assets/img/Miscellaneous/Baseplate/Heating-Base.png){:.ifr}]({{site.baseurl}}/miscellaneous/baseplate)
With a circular heat pad we control the environment of the experiment, namely the temperature.