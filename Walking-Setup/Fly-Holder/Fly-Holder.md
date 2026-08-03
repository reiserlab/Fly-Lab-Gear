---
title: Fly Holder
parent: G6 Arena Integration
permalink: /g6/fly-holder
nav_order: 1
---

# Fly Holder

[![Open GitHub folder]({{site.baseurl}}/assets/img/GitHub-Mark-32px.png) → to GitHub project folder](https://github.com/reiserlab/Fly-Lab-Gear/tree/main/Walking-Setup/Fly-Holder){:.ifr}

A taller and longer version of our friction-mount fly holder, printed with an FDM printer. It holds the tethered *Drosophila* over the ball, and the extra reach is what lets us position the fly at the raised working height needed to sit inside the [G6 arena]({{site.baseurl}}/g6). The stand raises the mounting point and the arm extends over to the sphere. The arm connects to the pin tether at an angle to position the fly on the ball, facing "uphill."

![Fly holder stand and arms]({{site.baseurl}}/assets/img/G6-Arena-Integration/Fly-Holder/Fly-Holder.png){:.ifr .pop}
The holder is a friction-fit assembly: the arm slides into the stand and is held by friction, so the fly's height and fore–aft position can be adjusted by hand and then left in place. Left and right arms are mirror images so the holder can be approached from either side of the setup. An M3 screw, 4-40 screw, or pin of equivalent diameter can be used to provide a pivot point through the arm-stand connection.
{:.clear}

## Production files

All parts are printed on an FDM printer. Each is provided as an `.stl` for slicing and printing and an `.stp` (STEP) for editing in CAD; there is no FreeCAD source ([file types]({{site.baseurl}}/file-types)).

| File | Component |
| ---- | --------- |
| [`production/Friction-Mount-Stand.stl`]({{site.baseurl}}/Walking-Setup/Fly-Holder/production/Friction-Mount-Stand.stl) / [`.stp`]({{site.baseurl}}/Walking-Setup/Fly-Holder/production/Friction-Mount-Stand.stp) | Base stand that sets the mounting height |
| [`production/Friction-Mount-Arm-L.stl`]({{site.baseurl}}/Walking-Setup/Fly-Holder/production/Friction-Mount-Arm-L.stl) / [`.stp`]({{site.baseurl}}/Walking-Setup/Fly-Holder/production/Friction-Mount-Arm-L.stp) | Left arm that reaches over the sphere |
| [`production/Friction-Mount-Arm-R.stl`]({{site.baseurl}}/Walking-Setup/Fly-Holder/production/Friction-Mount-Arm-R.stl) / [`.stp`]({{site.baseurl}}/Walking-Setup/Fly-Holder/production/Friction-Mount-Arm-R.stp) | Right arm (mirror of the left) |

## Bill of Materials

<table>
  <tr>
    <th width="10%">Quantity</th>
    <th width="50%">Name + Description</th>
    <th width="20%">Vendor</th>
    <th width="20%">Note</th>
  </tr>
  {% assign g6_bom_rows = site.data["G6-Integration-Bill-of-Materials"] | where: "Subassembly", "Fly Holder" %}
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