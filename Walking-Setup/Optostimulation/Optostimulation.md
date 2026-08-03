---
title: Optostimulation
parent: G6 Arena Integration
permalink: /g6/optostimulation
nav_order: 3
---

# Optostimulation

[![Open GitHub folder]({{site.baseurl}}/assets/img/GitHub-Mark-32px.png) → to GitHub project folder](https://github.com/reiserlab/Fly-Lab-Gear/tree/main/Walking-Setup/Optostimulation){:.ifr}

To deliver optogenetic stimulation to the walking fly, we added a light that can be aimed at the animal from above. The mount is a small rail system built from FDM-printed parts that attaches directly to the top G6 PCB, so the stimulation light is positioned relative to the fly and the rest of the [G6 arena]({{site.baseurl}}/g6) hardware. A carriage slides along the rail to set the position, and a light-guide holder aims the beam at the fly.

![Optostimulation rail]({{site.baseurl}}/assets/img/G6-Arena-Integration/Optostimulation/Optostimulation.jpg){:.ifr .pop}
The light source is a Cree XLamp XP-E2 high-power LED on a star board, focused with a Carclo 20 mm tight-spot lens and driven at constant current by a LEDsupply BuckPuck driver. The printed rail holder, slider, and light guide let us aim this optic at the fly and lock it in place using thumb screws. See the [bill of materials]({{site.baseurl}}/g6) for the full electronics list.
{:.clear}

## Production files

Each part is printed on an FDM printer and provided as an `.stl` for printing and an `.stp` (STEP) for editing; there is no FreeCAD source ([file types]({{site.baseurl}}/file-types)).

| File | Component |
|------|-----------|
| [`production/optostim-light-rail-holder.stl`]({{site.baseurl}}/Walking-Setup/Optostimulation/production/optostim-light-rail-holder.stl) / [`.stp`]({{site.baseurl}}/Walking-Setup/Optostimulation/production/optostim-light-rail-holder.stp) | Mounts the rail to the PCB |
| [`production/90Deg-Rail-Slider.stl`]({{site.baseurl}}/Walking-Setup/Optostimulation/production/90Deg-Rail-Slider.stl) / [`.stp`]({{site.baseurl}}/Walking-Setup/Optostimulation/production/90Deg-Rail-Slider.stp) | Right-angle carriage that slides along the rail |
| [`production/optostim-light-guide.stl`]({{site.baseurl}}/Walking-Setup/Optostimulation/production/optostim-light-guide.stl) / [`.stp`]({{site.baseurl}}/Walking-Setup/Optostimulation/production/optostim-light-guide.stp) | Holds and aims the LED optic / light guide |

## Bill of Materials

<table>
  <tr>
    <th width="10%">Quantity</th>
    <th width="50%">Name + Description</th>
    <th width="20%">Vendor</th>
    <th width="20%">Note</th>
  </tr>
  {% assign g6_bom_rows = site.data["G6-Integration-Bill-of-Materials"] | where: "Subassembly", "Optostim" %}
  {% for row in g6_bom_rows %}
  <tr>
    <td>{{row['Qty'] | strip }}</td>
    {% assign url_component = row['Link to Component Page'] %}
    <td>{% if url_component != nil %}<a href="{{ url_component | strip }}"> {% endif %}
    <strong>{{ row['Part Name'] }}</strong>
    {% if url_component != nil %}</a>{% endif %}
    {% if row['Description'] != nil %}<br/>{{ row['Description'] }} {% endif %}
    </td>
    {% assign url_shop = row['Link'] %}
    <td><a href="{{ url_shop | strip }}">{{ url_shop | remove: 'http://' | remove: 'https://' | remove_first: 'www.' | split: '/' | first | capitalize }}</a></td>
    <td>{{ row['Note'] }}</td>
  </tr>
  {% endfor %}
</table>