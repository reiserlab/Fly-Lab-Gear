---
title: G6 Integrated Treadmill
parent: G6 Arena Integration
permalink: /g6/treadmill
nav_order: 2
---

# G6 Integrated Treadmill

[![Open GitHub folder]({{site.baseurl}}/assets/img/GitHub-Mark-32px.png) → to GitHub project folder](https://github.com/reiserlab/Fly-Lab-Gear/tree/main/Walking-Setup/Inexpensive-Treadmill_Assembly){:.ifr}

A taller variant of the [Integrated Inexpensive Treadmill]({{site.baseurl}}/walking/inexpensive-treadmill#integrated-inexpensive-treadmill), designed to lift the camera, sphere, and illumination up to the working height of the [G6 arena]({{site.baseurl}}/g6). Like the original, it consolidates the camera holder, sphere holder, NIR LED mounts, and heating-pad mount into a single printed body, so the relative positions of camera, sphere, and illumination stay fixed and repeatable.

![G6 integrated camera and treadmill]({{site.baseurl}}/assets/img/G6-Arena-Integration/G6-Integrated-Treadmill/G6-Integrated-Treadmill.png){:.ifr .pop}
The taller body raises the fly and sphere so they sit at the center of the surrounding G6 display panels. To keep the taller print dimensionally accurate at the small mounting features, this version is printed with a resin printer rather than FDM; resin also gives a stiffer, smoother body that allows the air supply to support the ball without leaks. It carries the same mounts as the base integrated design and pairs with the [Illumination PCB]({{site.baseurl}}/walking/illumination-pcb) for near-infrared tracking illumination. The air supply can be connected to the treadmill with a 1/8" NPT coupler, such as the 1/4" OD push-to-connect to 1/8" NPT tube fitting listed in the [bill of materials]({{site.baseurl}}/g6).
{:.clear}

## Production files

Provided as an `.stl` for printing and an `.stp` (STEP) for editing; this version has no FreeCAD source ([file types]({{site.baseurl}}/file-types)). The base and centered variants of the integrated treadmill, with their FreeCAD sources, are documented on the [Inexpensive Treadmill Assembly]({{site.baseurl}}/walking/inexpensive-treadmill) page.

- [`production/G6-Integrated-Inexpensive-Treadmill.stl`]({{site.baseurl}}/Walking-Setup/Inexpensive-Treadmill_Assembly/production/G6-Integrated-Inexpensive-Treadmill.stl) / [`.stp`]({{site.baseurl}}/Walking-Setup/Inexpensive-Treadmill_Assembly/production/G6-Integrated-Inexpensive-Treadmill.stp): the taller, resin-printed integrated body for the G6 arena.

## Bill of Materials

### Treadmill

<table>
  <tr>
    <th width="10%">Quantity</th>
    <th width="50%">Name + Description</th>
    <th width="20%">Vendor</th>
    <th width="20%">Note</th>
  </tr>
  {% assign g6_bom_rows = site.data["G6-Integration-Bill-of-Materials"] | where: "Subassembly", "Treadmill" %}
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

### Heater

<table>
  <tr>
    <th width="10%">Quantity</th>
    <th width="50%">Name + Description</th>
    <th width="20%">Vendor</th>
    <th width="20%">Note</th>
  </tr>
  {% assign g6_bom_rows = site.data["G6-Integration-Bill-of-Materials"] | where: "Subassembly", "Heater" %}
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