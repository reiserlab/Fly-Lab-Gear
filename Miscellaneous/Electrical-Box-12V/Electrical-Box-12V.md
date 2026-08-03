---
title: Electrical Control Box (12 V)
parent: G6 Arena Integration
permalink: /g6/electrical-box
nav_order: 5
---

# Electrical Control Box (12 V)

[![Open GitHub folder]({{site.baseurl}}/assets/img/GitHub-Mark-32px.png) → to GitHub project folder](https://github.com/reiserlab/Fly-Lab-Gear/tree/main/Miscellaneous/Electrical-Box-12V){:.ifr}

The [G6 integration]({{site.baseurl}}/g6) has several loads that all run from 12 V: the heating pad, the optogenetic stimulation light, and the illumination panel. Rather than run a separate wall supply and loose wiring for each, we combine their 12 V power into a single laser-cut enclosure. The box gives every subsystem a common supply and keeps the wiring on the bench tidy and repeatable.

![12 V electrical control box]({{site.baseurl}}/assets/img/G6-Arena-Integration/Electrical-Box-12V/Electrical-Box-12V.jpg){:.ifr .pop}
The front panel carries the connectors and controls for the shared supply: an on/off switch for the optogenetic stimulation, barrel-jack-to-screw-terminal adapters for the incoming and outgoing 12 V, a lever power splitter that fans the supply out to the individual loads, and a BNC-to-screw-terminal breakout for the stimulation trigger signal. The box is cut from acrylic; the only source files are the vector cut layouts.
{:.clear}

## Production files

The laser-cutting files live directly in the folder (there is no `production/` subfolder). `electrical-ctrl-box.svg` is the recommended source for cutting.

| File | Purpose |
|------|---------|
| [`electrical-ctrl-box.svg`]({{site.baseurl}}/Miscellaneous/Electrical-Box-12V/electrical-ctrl-box.svg) | Laser-cut layout (recommended source) |
| [`electrical-ctrl-box.dxf`]({{site.baseurl}}/Miscellaneous/Electrical-Box-12V/electrical-ctrl-box.dxf) | DXF export for other laser cutters |
| [`electrical-ctrl-box.pdf`]({{site.baseurl}}/Miscellaneous/Electrical-Box-12V/electrical-ctrl-box.pdf) | Preview / reference sheet |

## Bill of Materials


<table>
  <tr>
    <th width="10%">Quantity</th>
    <th width="50%">Name + Description</th>
    <th width="20%">Vendor</th>
    <th width="20%">Note</th>
  </tr>
  {% assign g6_bom_rows = site.data["G6-Integration-Bill-of-Materials"] | where: "Subassembly", "Electrical Box 12V" %}
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