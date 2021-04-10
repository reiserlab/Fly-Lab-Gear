---
title: File types and software
nav_order: 90
---


# Filetypes and applications

`*.FCStd` files are the native format of [FreeCAD](https://www.freecadweb.org/), an open-source 3D parametric modeller. It has a GUI to manipulate and parametrize models.

`*.scad` files are the native file format of [OpenSCAD](https://www.openscad.org/), "The Programmers Solid 3D CAD Modeller" – another open-source software (OSS). It uses a scripting language to build parametric models.

`*.[iam|ipt|idw]` files are the file format of [Autodesk Inventor](http://autodesk.com/inventor), a proprietary and commercial 3D CAD software. The extensions represent assembly, part, and drawing files respectively: `*.idw` files are "Inventor Drawing files", `*.ipt` files are "Inventor Part files", `*.iam` files are "Inventor Assembly files" ([Autodesk Inventor](https://www.autodesk.com/products/inventor/overview)).

`*.[stp|step]` files are a 3D exchange format ([STEP](https://en.wikipedia.org/wiki/ISO_10303-21)). They can be opened and edited with different application, for example [FreeCAD](https://www.freecadweb.org/).

`*.stl` are "stereolithography" files, containing unstructured triangulated surfaces of 3D models. This is the output format understood by our 3D printers, but not good for editing.

`*.pdf` files are used for different purposes. Within 3D projects, they sometimes contain drawings of the parts.

`*.svg` 2D Designs for laser cut, can be edited in the OSS [Inkscape](https://inkscape.org/). Sometimes `*.dxf` is used as an export format.

`*.md` with the same basename as other files contain additional information for that file. Usually that's related to licenses etc.

`*.[jpg|png]` pictures of the produced items. They usually follow the filename pattern `<design>_<printer>_<nr>_<date>`.

`*.pro` is a project file for the OSS [KiCad EDA](https://www.kicad-pcb.org/), an open-source electronics design automation suite. KiCad can produce `*.gbr` RS-274X gerber files for the manufacturers.