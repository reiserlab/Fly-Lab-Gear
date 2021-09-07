---
title: Inexpensive Treadmill
parent: Collections
permalink: /inexpensive-treadmill
nav_order: 1
---

# Inexpensive Treadmill

[![Title page of published article]({{site.baseurl}}/assets/img/Collection/10.3389_fnbeh.2021.689573.png){:.ifr}](https://doi.org/10.3389/fnbeh.2021.689573)
["An Inexpensive, High-Precision, Modular Spherical Treadmill Setup Optimized for *Drosophila* Experiments"](https://doi.org/10.3389/fnbeh.2021.689573) is an article Frank Loesche and Michael B. Reiser submitted to the research topic "[Modern Methods in Neuroethology](https://www.frontiersin.org/research-topics/12605/modern-methods-in-neuroethology)" for "[Frontiers in Behavioral Neuroscience](https://www.frontiersin.org/journals/behavioral-neuroscience)" (for an earlier version see [bioRxiv preprint](https://doi.org/10.1101/2021.04.29.442008)). For this "Inexpensive Treadmill" publication, we created a number of additional hardware and software components that turn out to be useful in the lab. The goal of this website and the github repository is to name the components used in the article, point to their detailed pages, and include material that is not appropriate for a scientific publication.

## Fly Handling

### [Funnel]({{site.baseurl}}/tether/funnels)

[![Funnel 3]({{site.baseurl}}/assets/img/Tethering/Funnels/Funnel_fly-vial-to-12mm-tube.png){:.ifr}]({{site.baseurl}}/tether/funnels)
For the experiments in the "Inexpensive Treadmill" manuscript, we used *Drosophila melanogaster* reared in [fly vials](https://flystuff.com/drosophila-products/vials/). These are 95×25mm translucent polypropylene tubes filled with about 20mm of cornmeal based fly food. Before the experiment we transfer a group of flies to a fly vial without food. We [cold anesthetize](https://doi.org/10.1242/jeb.098442) the flies, as the chill-coma [rapidly and reversibly immobilizes](https://doi.org/10.1086/320429) the animals. For the "Inexpensive Treadmill", we transfer the flies to [12mm test tubes](https://en.wikipedia.org/wiki/Test_tube#Biosciences) which we keep on ice for about 5 minutes. For transferring flies between different tubes with 25mm or 12mm diameter, we use a selection of [3D printed funnels]({{site.baseurl}}/tether/funnels).

### Flypicker

![Different suction fly picker]({{site.baseurl}}/assets/img/Tethering/Flypicker/Flypickers.jpg){:.ifr .pop}
To move individual flies, we use so called "fly pickers". With those pen-sized devices we lift flies through suction: a weak partial vacuum inside the device holds the anesthetized fly in place without injuring them. Similar devices are used in the microelectronics sector to pick and place small components during PCB assembly, and we have previously employed commercial devices from this industry (top image). Using a plastic transfer pipette, a few Luer connections, and a heat shrink tube or a one-way pipette tip, we created a similar gadget for the "Inexpensive Treadmill" setup (bottom image). <!-- TODO: add page and description on how to produce this -->

## Tethering Station

We use chill coma to immobilize flies during body-fixation. For the inexpensive treadmill setup, we use an air cooled heat sink with a fan that cools down a small Peltier element. On top of the peltier element we have a cooling plate. A blunt tip dispensing needle, which acts as a tether, is positioned on the thorax of the fly with a micromanipulator.

### [Cooling plate with sarcophagi]({{site.baseurl}}/tether/sarcophagus)

[![cooling plate with 15 differently sized sarcophagi]({{site.baseurl}}/assets/img/Tethering/Sarcophagus/Sarcophagus_platform_15.png){:.ifr}]({{site.baseurl}}/tether/sarcophagus)
Flies are held upright during tethering by the cylindrical shape of a "sarcophagus." Our present cooling plate design accommodates 15 different sarcophagi for various insect body sizes, with more or less 3D printed material between the Peltier element and the insect.

### [Micro Manipulator]({{site.baseurl}}/tether/micromanipulator)

[![MicroManipualtor]({{site.baseurl}}/assets/img/Tethering/MicroManipulator/MicroManipulator_Assembly_Figure2.png){:.ifr}]({{site.baseurl}}/tether/micromanipulator)
The blunt tip dispensing needle, also known as the tether, must be precisely placed on the fly's thorax. Using a 3-axis micro manipulator, we achieve fine-grained translational manipulation of the tether in three dimensions.

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
The camera-based rotation tracking with the software [FicTrac](https://github.com/rjdmoore/fictrac) is reliable. It entails the use of a camera with a low resolution but high frame rate. We customized a Playstation 3 Eye camera to work with near infrared (NIR) illumination and at >180fps in our configuration.

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

## Ordering Components

### Tethering Station

Download tethering station table as .csv file [here]({{site.baseurl}}/assets/data/tethering_order.csv).

<!-- Generates table from tethering_order.csv -->
<!-- note: Jekyll/Liquid wants to skip identical column headings, so there's a
space after duplicate headings in the user-friendly section of the csv files-->

<table>
  <tr>
    <th width="10%">Quantity</th>
    <th width="50%">Name + Description</th>
    <th width="20%">Vendor</th>
    <th width="20%">Note</th>
  </tr>
  {% for row in site.data.tethering_order %}
  <tr>
    <td>{{row['Quantity'] | strip }}</td>
    {% assign url_component = row['Link to Component Page'] %}
    <td>{% if url_component != nil %}<a href="{{ url_component | strip }}"> {% endif %}
    <strong>{{ row.Name}}</strong>
    {% if url_component != nil %}</a>{% endif %}
    {% if row['Description'] != nil %}<br/>{{ row['Description'] }} {% endif %}
    </td>
    {% assign url_shop = row['Link to Source'] %}
    <td><a href="{{ url_shop | strip }}">{{ url_shop | remove: 'http://' | remove: 'https://' | remove_first: 'www.' | split: '/' | first | capitalize }}</a></td>
    <td>{{ row['Notes'] }}</td>
  </tr>
  {% endfor %}
</table>


### Walking Setup

Download walking setup table as .csv file [here]({{site.baseurl}}/assets/data/walkingsetup_order.csv).

<table>
  <tr>
    <th width="10%">Quantity</th>
    <th width="50%">Name + Description</th>
    <th width="20%">Vendor</th>
    <th width="20%">Note</th>
  </tr>
  {% for row in site.data.walkingsetup_order %}
  <tr>
    <td>{{row['Quantity'] | strip }}</td>
    {% assign url_component = row['Link to Component Page'] %}
    <td>{% if url_component != nil %}<a href="{{ url_component | strip }}"> {% endif %}
    <strong>{{ row.Name }}</strong>
    {% if url_component != nil %}</a>{% endif %}
    {% if row['Description'] != nil %}<br/>{{ row['Description'] }} {% endif %}
    </td>
    {% assign url_shop = row['Link to Source'] %}
    <td><a href="{{ url_shop | strip }}">{{ url_shop | remove: 'http://' | remove: 'https://' | remove_first: 'www.' | split: '/' | first | capitalize }}</a></td>
    <td>{{ row['Notes'] }}</td>
  </tr>
  {% endfor %}
</table>
