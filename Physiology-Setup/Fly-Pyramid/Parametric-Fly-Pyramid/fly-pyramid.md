---
title: "Fly Pyramid: A reference of the parametrically designed fly holder"
author: 
  - name: Benjamin Hayworth
    affiliations:
      - Loudoun County High Schools
      - Janelia Research Campus
  - name: Frank Loesche
    orcid: 0000-0002-7780-6438
    email: loeschef@janelia.hhmi.org
    corresponding: true
    affiliations: 
      - Janelia Research Campus
      - MCN-NET
date: last-modified
bibliography: references.bib 
biblio-title: References
csl: apa-6th-edition.csl 
link-citations: true
link-bibliography: true
number-sections: true
number-depth: 3
format:
  html:
    theme: Yeti
    code-fold: true
    embed-resources: false
  pdf: default
  docx: default
jupyter: python3
---

![]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Title.png)

# Introduction

This version of the fly holder is meant to be printed with a resin printer with the provided model supports. This edition of the fly pyramid is optimized for a wide range of customizability and parameterization for resin 3d printing. Drosophila, microscopes, and mounting equipment vary in size and shape, and will often cause necessary changes in the fly holder design.

The [current model of the Fly Pyramid]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Fly_Pyramid_Model.FCStd) was designed in a free, open source 3d modeling software called [FreeCAD](https://www.freecad.org/), which is [available for all major platforms (Linux, Windows, and Mac)](https://www.freecad.org/downloads.php). This design was created in FreeCAD version 0.21.2, and made in the [weekly version of FreeCAD](https://github.com/FreeCAD/FreeCAD-Bundle/releases/tag/weekly-builds). To properly parameterize the model, any latest weekly version after version “38314” will work. However, due to unknown complications, the final version of the model only works in Windows.

Altering these parameters, which are explained and documented in this reference, allows for a large range of fly holders to be customized. To alter the designs, the FreeCAD software will need to be installed, where a list of parameters will be shown on a spreadsheet. Furthermore, a tutorial to print the model and the best settings are shown at the end of the document. The FreeCAD file (.FCstd), which can be used to parameterize the model, cannot be directly imported into a slicer model. Instead, the FreeCAD model needs to be exported either as an OBJ or as an STL, which will be shown at the end of the document. Furthermore, the default OBJ and STL files, which cannot be parameterized and include only default settings, are also linked in the GitHub below. Both the OBJ and STL files, however, can be directly imported into a slicer to be 3d-printed.  In general, stl files were used. However, in rare cases, the preferable STL format led to erroneous rendering in the Lychee slicer software. Switching to the OBJ file format solved this problem. In GitHub, both formats are provided to work around similar issues.

# Overview

The following documentation describes the parameters and customization of the Fly Pyramid Model for application in various experiments. To change the following parameters, open the FreeCAD file and click on Fly Pyramid Parameters near the top left. This will open a spreadsheet with a list of parameters and values as shown below. Values on a yellow background can be modified, red parameters are "read only” references that are calculated by the model and based on the modified parameters. 

The Fly Pyramid Design and its parameters will be grouped into the following sections to make the documentation and labeling easier to follow. The image below displays the sections and names of each. 


::: {#fig-component-names layout-ncol=2}

![]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Pyramid-Components_top.png){.lightbox}

![]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Pyramid-Components_bottom.png){.lightbox}


**(a) Pyramid overview (top)** Naming scheme used in this documentation for the component of the pyramid as seen from the top. **(b) Pyramid overview (bottom)** Component name as seen from the bottom. 
:::

## Pyramid

::: {#fig-pyramid layout-ncol=2}

![RectLength (@sec-RectLength)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_RectLength.png){#fig-RectLength .lightbox}

![RectWidth (@sec-RectWidth)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_RectWidth.png){#fig-RectWidth .lightbox}

![PyramidDepth (@sec-PyramidDepth)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_PyramidDepth.png){#fig-PyramidDepth .lightbox}

![PyramidBackAngle (@sec-PyramidBackAngle)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_PyramidBackAngle.png){#fig-PyramidBackAngle .lightbox}

Pyramid parameters
:::


### RectLength {#sec-RectLength}

*RectLength* (default: 10mm) describes the distance between the beginning of the indentation that is shaped like a pyramid to the end of this indentation (see @fig-RectLength). 

This parameter is closely associated with the *RectWidth* parameter (@sec-RectWidth) in defining the shape of the top portion of the pyramid.  


### RectWidth {#sec-RectWidth}

*RectWidth* (default: 25mm) describes the distance between the beginning of the indentation that marks the left side of the model, to the right side (see @fig-RectWidth).

This parameter is closely associated with the *RectLength* (@sec-RectLength) parameter in defining the shape of the top portion of the pyramid.


### PyramidDepth {#sec-PyramidDepth}

*PyramidDepth* (default: 3mm) describes the distance between the top portion of the pyramid and the top of the hole at the bottom of the pyramid, which the fly will be positioned in, as shown by the solid red arrow in @fig-PyramidDepth.

This parameter, along with *PyramidBackAngle* (@sec-PyramidBackAngle) is crucial in determining the shape of the inside of the pyramid, which is hollow.


### PyramidBackAngle {#sec-PyramidBackAngle}

*PyramidBackAngle* (default: 3mm, 45° < *PyramidBackAngle* < 90°) describes the angle between the back of the top portion of the pyramid, and the top of the hole at the bottom of the pyramid, as shown by the angle in the top left of the red triangle in @fig-PyramidBackAngle.

This parameter, along with *PyramidDepth* (@sec-PyramidDepth) is crucial in defining the shape of the inner portion of the pyramid, which is hollow.

::: {#fig-pyramid-thickness layout-ncol=2}

![TopOfPyramidThickness (@sec-TopOfPyramidThickness)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_TopOfPyramidThickness.png){#fig-TopOfPyramidThickness .lightbox}

![BottomOfPyramidThickness (@sec-BottomOfPyramidThickness)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_BottomOfPyramidThickness.png){#fig-BottomOfPyramidThickness .lightbox}

Pyramid material parameters
:::

### TopOfPyramidThickness {#sec-TopOfPyramidThickness}

*TopOfPyramidThickness* (default: 1mm, 0 < *PyramidBackAngle* < *PyramidDepth*) defines the overall thickness of the area around the pyramid section, not including the side walls or the back. This distance starts from the top of the pyramid, and continues down, as shown by the solid red arrows in @fig-TopOfPyramidThickness.

This parameter, along with *BottomOfPyramidThickness* (@sec-BottomOfPyramidThickness) play a crucial role in the overall structural stability of the pyramid.


### BottomOfPyramidThickness {#sec-BottomOfPyramidThickness}

*BottomOfPyramidThickness* (default: 0.2mm) defines the overall thickness of the hole at the bottom of the pyramid, in which the fly will be mounted (see @fig-BottomOfPyramidThickness). This starts from the bottom of the *PyramidDepth* (@fig-PyramidDepth) and goes down.

This parameter, along with *TopOfPyramidThickness* (@sec-TopOfPyramidThickness) help define the overall strength of the pyramid and determine the field of view of the fly and view of the microscope. 


## Fly Hole and Underside Space


::: {#fig-hole-parameters layout-ncol=2}

![HoleWidth (@sec-HoleWidth)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_HoleWidth.png){#fig-HoleWidth .lightbox}

![HoleLength (@sec-HoleLength)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_HoleLength.png){#fig-HoleLength .lightbox}

![ReferenceHoleDistanceToRect (@sec-ReferenceHoleDistanceToRect)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_ReferenceHoleDistanceToRect.png){#fig-ReferenceHoleDistanceToRect .lightbox}

![ThoraxSpace (@sec-ThoraxSpace)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_ThoraxSpace.png){#fig-ThoraxSpace .lightbox}

![FlySpaceDistance (@sec-FlySpaceDistance)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_FlySpaceDistance.png){#fig-FlySpaceDistance .lightbox}

![DistanceSplineUp and DistanceSplineLength (@sec-DistanceSplineUp)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_DistanceSplineUp.png){#fig-DistanceSplineUp .lightbox}

Hole parameters
:::

### HoleWidth {#sec-HoleWidth}

*HoleWidth* (default: 1mm) defines the total width of the hole in which the fly will be mounted, in the direction of the *RectWidth* (@sec-RectWidth) parameter, as shown by the red arrow in @fig-HoleWidth. 

This parameter, along with *HoleLength* (@sec-HoleLength) helps define the hole in which the fly will be mounted into and is determined on how big the fly is. 


### HoleLength  {#sec-HoleLength}

*HoleLength* (default: 1mm) defines the the total length of the hole in which the fly will be mounted (see @fig-HoleLength), in the direction of the *RectLength* (@fig-RectLength) parameter. 

This parameter, along with *HoleWidth* (@sec-HoleWidth) helps define the hole in which the fly will be mounted into and is determined on how big the fly is. 


### ReferenceHoleDistanceToRect {#sec-ReferenceHoleDistanceToRect}

::: {.callout-tip}
#### Reference

This parameter cannot be changed and is only used as a reference 
:::

*ReferenceHoleDistanceToRect* (default: 0.8mm) defines the overall horizontal distance from the back of hole at the bottom of the pyramid to overall back of the pyramid, as shown by the solid red arrow in @fig-ReferenceHoleDistanceToRect. 


### ThoraxSpace {#sec-ThoraxSpace}

*ThoraxSpace* (default: 0.5mm, 0 < *PyramidBackAngle* < (*PyramidDepth* - *TopOfPyramidThickness*)) defines the total distance from the bottom of the hole in the pyramid, up the back section of the pyramid, as shown by the solid red arrow in @fig-ThoraxSpace. 

This cutout helps determine the extra room for the thorax of the fly, which can be altered to more easily mount and position the fly. 


### FlySpaceDistance {#sec-FlySpaceDistance}

*FlySpaceDistance* (default: 2mm) determines the total length of the spline underneath the fly starting from the very back of the pyramid, and going backwards, and meeting with the bottom of the model. The side of the arrow, indicated by the lock, does not move when the distance is increased, and the side left of it increases. 

This parameter, along with *DistanceSplineUp* and *MiddleSplineLength* define the overall shape of the spline in which the fly will be positioned. 
 

### DistanceSplineUp / MiddleSplineLength {#sec-DistanceSplineUp}

The bottom space surrounding the fly is defined by a single spline, consisting of three points. *DistanceSplineUp* and *MiddleSplineLength* define the middle point position of the spline near the fly. These parameters are lumped together as they both define the same point and cannot be defined independently in a clear way. 

*DistanceSplineUp* (default: 1mm) determines the total depth of the middle point of the spline underneath the model, starting from the bottom of the model, as shown by the solid red arrow in @fig-DistanceSplineUp. 

This parameter, along with *FlySpaceDistance* and *MiddleSplineLength* define the overall shape of the spline in which the fly will be positioned. 

*MiddleSplineLength* (default: 0.3mm) determines the total distance of the middle point of the spline underneath the model from the back of the hollowed pyramid section, as shown by the solid red arrow in @fig-DistanceSplineUp. 

This parameter, along with *FlySpaceDistance* and *MiddleSplineLength* define the overall shape of the spline in which the fly will be positioned. 


## Right and Left Edge 

This Section only includes the names and descriptions of the right parameters, but the left parameters are the same and are under the Left parameters section in the spreadsheet. The name in brackets denotes the parameter name for the left side. 


::: {#fig-right-left-edge layout-ncol=2}

![RightHeight (@sec-RightHeight)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_RightHeight.png){#fig-RightHeight .lightbox}

![RightWallThickness (@sec-RightWallThickness)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_RightWallThickness.png){#fig-RightWallThickness .lightbox}

![RightWallDistanceFromRect (@sec-RightWallDistanceFromRect)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_RightWallDistanceFromRect.png){#fig-RightWallDistanceFromRect .lightbox}


Right and Left Edge parameters
:::


### RightHeight (LeftHeight) {#sec-RightHeight}

*RightHeight* (*LeftHeight*, default: 1.2mm) determines the height of the right edge of the pyramid, starting from the top of the pyramid section (see @fig-RightHeight). 

The parameters of the two sides together determine the overall height of the two edges. Height cannot go above the *UpperDepth* parameter, which is the height of the surrounding features around it. Furthermore, this height does not include the height of the area surrounding the pyramid, so setting it to 0 reverts to the area surrounding the pyramid’s height. If this height needs to be set to the surrounding edges, setting it high will do so. 
 

### RightWallThickness (LeftWallThickness) {#sec-RightWallThickness}

*RightWallThickness* (*LeftWallThickness*, default: 2mm) determines the overall thickness of the right wall, starting from the *RightWallDistanceFromRect* (*LeftWallDistanceFromRect*) parameter (see @fig-RightWallThickness). 

This parameter, along with *RightWallDistanceFromRect* (*LeftWallDistanceFromRect*) defines the extra distance of the model from the sides of the pyramid and increases the overall stability of the design. 


### RightWallDistanceFromRect (LeftWallDistanceFromRect) {#sec-RightWallDistanceFromRect}

*RightWallDistanceFromRect* (*LeftWallDistanceFromRect*, default: 2mm) defines the total distance from the edge of the top of the pyramid, to the start of the right wall (see @fig-RightWallDistanceFromRect). 

This parameter, along with *RightWallThickness* (*LeftWallThickness*) defines the extra distance of the model from the sides of the pyramid and increases the overall stability of the design. 


## Upper Section 


::: {#fig-upper-section layout-ncol=2}

![UpperBackDistanceToRect (@sec-UpperBackDistanceToRect)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_UpperBackDistanceToRect.png){#fig-UpperBackDistanceToRect .lightbox}

![ExtraDistanceForEdge (@sec-ExtraDistanceForEdge)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_ExtraDistanceForEdge.png){#fig-ExtraDistanceForEdge .lightbox}

![UpperDepth (@sec-UpperDepth)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_UpperDepth.png){#fig-UpperDepth .lightbox}

![UpperBackFillet (@sec-UpperBackFillet)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_UpperBackFillet.png){#fig-UpperBackFillet .lightbox}

Upper Section parameters
:::

### UpperBackDistanceToRect {#sec-UpperBackDistanceToRect}

*UpperBackDistanceToRect* (default: 5mm) defines the total distance from the back of the pyramid to the start of the higher section in the back (see @fig-UpperBackDistanceToRect). 

This parameter, along with *UpperBackFillet* (see @sec-UpperBackFillet) help define the extra space behind the back pyramid and is helpful for allowing possible fluids into the pyramid section or extra space for a microscope lens. 


### ExtraDistanceForEdge {#sec-ExtraDistanceForEdge}

*ExtraDistanceForEdge* (default: 2mm, 0 < *ExtraDistanceForEdge* < *[UpperDistanceToRect](#sec-UpperDistanceToRect)*) defines the start of the right and left sections of the edge, starting from the back of the pyramid (see @fig-ExtraDistanceForEdge). 

This parameter, along with the *RightHeight* (*LeftHeight*) parameter (@sec-RightHeight), provides potential extra space for entering from the side of the pyramid. 

 
### UpperDepth {#sec-UpperDepth}

*UpperDepth* (default: 1.2mm) defines the overall depth of the back of the plate, starting from the top of the pyramid section (see @fig-UpperDepth). This parameter also sets the thickness of the front portion of the model. 

This parameter, along with *TopOfPyramidThickness* (@sec-TopOfPyramidThickness) set the overall thickness of the back plate and the front section of the model. 

 

### UpperBackFillet {#sec-UpperBackFillet}

*UpperBackFillet* (default: 3mm) defines the radius of the fillet behind the back of the pyramid and before the higher section of the back plate (see @fig-UpperBackFillet).  

This paramter, along with *UpperDistanceToRect* (@sec-UpperDistanceToRect) and *ExtraDistanceToEdge* (@sec-ExtraDistanceToEdge) define the shape of the fillet in the behind the pyramid section and will automatically be set lower if it is too high. 

 
::: {#fig-front-section layout-ncol=2}

![FrontPieceDistanceToRect (@sec-FrontPieceDistanceToRect)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_FrontPieceDistanceToRect.png){#fig-FrontPieceDistanceToRect .lightbox}

![FrontPieceLength (@sec-FrontPieceLength)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_FrontPieceLength.png){#fig-FrontPieceLength .lightbox}

![OuterFillet (@sec-OuterFillet)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_OuterFillet.png){#fig-OuterFillet .lightbox}

upper front section parameters
:::

### FrontPieceDistanceToRect {#sec-FrontPieceDistanceToRect}

*FrontPieceDistanceToRect* (default: 0mm) defines the overall distance from the front of the pyramid to the start of the higher, front edge of the model (see @fig-FrontPieceDistanceToRect). 

This parameter along with *FrontPieceLength* (@sec-FrontPieceLength) and *OuterFillet* (@sec-OuterFillet) define the overall shape of the front of the model. 


### FrontPieceLength {#sec-FrontPieceLength}

*FrontPieceLength* (default: 2mm) defines the overall thickness of the front edge of the model (see @fig-FrontPieceLength). 

This parameter along with *FrontPieceDistanceToRect* (@sec-FrontPieceDistanceToRect) and *OuterFillet* (@sec-OuterFillet) define the overall shape of the front of the model.


### OuterFillet {#sec-OuterFillet}

*OuterFillet* (default: 1mm) defines the overall radius of both fillets on the front end of the model, as shown by the solid red arrow at the bottom left in @fig-OuterFillet. 

This parameter along with *FrontPieceLength* (@sec-FrontPieceLength) and *FrontPieceDistanceToRect* (@sec-FrontPieceDistanceToRect) define the overall shape of the front of the model and will be automatically set to its max if set too high. 


## Back Plate 

::: {#fig-back-plate layout-ncol=2}

![BackDistance (@sec-BackDistance)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_BackDistance.png){#fig-BackDistance .lightbox}

![BackSplineDepth (@sec-BackSplineDepth)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_BackSplineDepth.png){#fig-BackSplineDepth .lightbox}

![BackOffset (@sec-BackOffset)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_BackOffset.png){#fig-BackOffset .lightbox}

![BackWallDepth (@sec-BackWallDepth)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_BackWallDepth.png){#fig-BackWallDepth .lightbox}

![BackWallHeight (@sec-BackWallHeight)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_BackWallHeight.png){#fig-BackWallHeight .lightbox}

![BackPlateFillet (@sec-BackPlateFillet)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_BackPlateFillet.png){#fig-BackPlateFillet .lightbox}

![ReferenceBackDistance (@sec-ReferenceBackDistance)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_ReferenceBackDistance.png){#fig-ReferenceBackDistance .lightbox}


Back Plate parameters
:::

### BackDistance {#sec-BackDistance}

*BackDistance* (default: 40mm) defines the overall distance from the middle of the hole in the pyramid to the very back of the model (see @fig-BackDistance). 

This parameter, along with *BackOffset* (@sec-BackOffset) and *BackWallHeight* (@sec-BackWallHeight) help define the overall sections of the back plate model horizontally. If this parameter is set too low (less than the [*BackOffset*](#sec-BackOffset) + [*UpperDistanceToRect*](#sec-UpperDistanceToRect) + [*BackSplineDepth*](#sec-BackSplineDepth)), it will automatically be set to its minimum it can work with. 


### BackSplineDepth {#sec-BackSplineDepth}

*BackSplineDepth* (default: 4mm) defines the overall depth of the spline in the back of the model, starting from the very back of the model (see @fig-BackSplineDepth). This dimension can never be less than *TopOfPyramidThickness*, and will be auto set to the *TopOfPyramidThickness* (@sec-TopOfPyramidThickness) if it is less than it. 

This parameter, along with *BackPlateFillet* (@sec-BackPlateFillet) help define the overall shape of the back of the model and can provide easier mounting for the model. 

 
### BackOffset {#sec-BackOffset}

*BackOffset* (default: 10mm) defines the overall distance starting from the upper portion of the back of the model to the back wall of the model (see @fig-BackOffset). 

This parameter, along with *BackDistance* (@sec-BackDistance) helps to define the overall sections of the back plate of the model. 


### BackWallDepth {#sec-BackWallDepth}

*BackWallDepth* (default: 2mm) defines the overall thickness of the back wall of the model (see @fig-BackWallDepth). 

This parameter, along with *BackWallHeight* (@sec-BackWallHeight) help to define the overall shape of the back wall of the model, which can be used to get better images from the back of the model. 


### BackWallHeight {#sec-BackWallHeight}

*BackWallHeight* (default: 10mm) defines the overall height of the back wall of the model, starting from the top of the back of the upper section behind the pyramid, to the top of the higher back plate (see @fig-BackWallHeight).

This parameter, along with *BackWallDepth* (@sec-BackWallHeight) help define the overall shape of the back wall and can be used to get better images from the back of the model. This parameter can also be set to 0 to make the model flat. 


### BackPlateFillet {#sec-BackPlateFillet}

*BackPlateFillet* (default: 1mm) defines the total radius of the fillet on each side of the back plate of the model (see @fig-BackPlateFillet). 

This parameter, along with *BackSplineDepth* (@sec-BackSplineDepth) helps to define the overall shape of the very back of the model and can be used for easier mounting or clamping for the model. 


### ReferenceBackDistance {#sec-ReferenceBackDistance}

::: {.callout-tip}
#### Reference

This parameter cannot be changed and is only used as a reference 
:::

*ReferenceBackDistance* (default: 38.6mm) is a reference parameter that shows the overall distance from the back of the pyramid section to the very back of the model, as shown by the solid red arrow in @fig-ReferenceBackDistance. 


## Microscope Lens 

This cutout can be removed by increasing the working distance to higher than the depth of the pyramid. 

::: {#fig-microscope layout-ncol=2}

![ObjectiveDiameter (@sec-ObjectiveDiameter)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_ObjectiveDiameter.png){#fig-ObjectiveDiameter .lightbox}

![LensDiameter (@sec-LensDiameter)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_LensDiameter.png){#fig-LensDiameter .lightbox}

![WorkingDistance (@sec-WorkingDistance)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_WorkingDistance.png){#fig-WorkingDistance .lightbox}

![LensHeight (@sec-LensHeight)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_LensHeight.png){#fig-LensHeight .lightbox}

Back Plate parameters
:::


### ObjectiveDiameter {#sec-ObjectiveDiameter}

*ObjectiveDiameter* (default: 10mm) defines the overall diameter of the objective of the microscope cutout, as shown by the solid red arrow in @fig-ObjectiveDiameter, which is centered at the middle of the fly pyramid hole. 

This parameter, along with *LensHeight* (@sec-LensHeight), *WorkingDistance* (@sec-WorkingDistance), and *LensDiameter* (@sec-LensDiameter) defines the overall shape of the microscope cutout, which can be used to judge how well the microscope meshes with the design and to provide more space for the microscope. 


### LensDiameter {#sec-LensDiameter}

*LensDiameter* (default: 4mm) defines the overall diameter of the lens of the microscope cutout, as shown by the solid red arrow in @fig-LensDiameter, which is centered at the middle of the fly pyramid hole. 

This parameter, along with *LensHeight* (@sec-LensHeight), *WorkingDistance* (@sec-WorkingDistance), and *ObjectiveDiameter* (@sec-ObjectiveDiameter) defines the overall shape of the microscope cutout, which can be used to judge how well the microscope meshes with the design and to provide more space for the microscope. 


### WorkingDistance {#sec-WorkingDistance}

*WorkingDistance* (default: 2mm) defines the overall distance from the top of the hole at the bottom of the pyramid to the bottom of the lens, as shown by the solid red arrow in @fig-WorkingDistance. 

This parameter, along with *LensHeight* (@sec-LensHeight), *LensDiameter* (@sec-LensDiameter), and *ObjectiveDiameter* (@sec-ObjectiveDiameter) defines the overall shape of the microscope cutout, which can be used to judge how well the microscope meshes with the design and to provide more space for the microscope. 
 

### LensHeight {#sec-LensHeight}

*LensHeight* (default: 2mm) defines the overall distance from the objective to the lens, as shown by the solid red arrow in @fig-LensHeight.

This parameter, along with *WorkingDistance* (@sec-WorkingDistance), *LensDiameter* (@sec-LensDiameter), and *ObjectiveDiameter* (@sec-ObjectiveDiameter) defines the overall shape of the microscope cutout, which can be used to judge how well the microscope meshes with the design and to provide more space for the microscope. 


## Bottom Supports 


![Bottom Supports]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/BottomSupports.png){#fig-BottomSupports .lightbox}


### ConeTopDiameter {#sec-ConeTopDiameter}

*ConeTopDiameter* (default: 0.7mm) defines the overall diameter of each cone supporting the bottom of the pyramid, as shown by the red arrow near the bottom right in @fig-BottomSupports. 

This parameter, along with *ConeTaper* (@sec-ConeTaper) define the overall shape of each cone supporting the model. 

 
### ConeTaper {#sec-ConeTaper}

*ConeTaper* (default: 10°) defines the overall taper angle of each cone supporting the model, as shown by the triangle near the bottom left of the model in @fig-BottomSupports. 

This parameter, along with *ConeTopDiameter* (@sec-ConeTopDiameter) defines the overall shape of each supporting model. 


### BottomExtraDistance {#sec-BottomExtraDistance}

*BottomExtraDistance* (default: 0.5mm) defines the overall extra distance of each side of the back plate from the model, as shown by the red arrow on the bottom right in @fig-BottomSupports. 

This parameter defines the extra distance of the plate to support the model and allows for the model to be properly supported from underneath. 


### BottomChamfer {#sec-BottomChamfer}

*BottomChamfer* (default: 0.5mm, 0 <= *BottomChamfer* < [*SupportPlateDepth*](#sec-SupportPlateDepth)) defines the total chamfer on the front and back ends of the support plate, as shown by the solid red arrow in the bottom right in @fig-BottomSupports. 

This parameter allows for the support plate to be taken off more easily from the build plate. 


### DistanceBetweenCones {#sec-DistanceBetweenCones}

*DistanceBetweenCones* (default: 1.75mm) defines the distance between the edges of each cone to each other connected to the bottom of the pyramid model, as shown by the solid red arrow near the middle of @fig-BottomSupports. 

This parameter, along with *ConeTopDiameter* (@sec-ConeTopDiameter) defines how many cones are supporting the model and how well it is supported. 


### ConeDistance {#sec-ConeDistance}

*ConeDistance* (default: 3mm) defines the overall height of each cone, starting from the bottom of the model to the top of the support plate, as shown by the red arrow in the bottom middle of @fig-BottomSupports. 

This parameter, along with *ConeTopDiameter* (@sec-ConeTopDiameter) and *ConeTaper* (@sec-ConeTaper) define the overall shape of each cone. 


### SupportPlateDepth {#sec-SupportPlateDepth}

*SupportPlateDepth* (default: 2mm) defines the total depth of the support plate, as shown by the red arrow in the bottom left of @fig-BottomSupports. 

This parameter, along with *BottomExtraDistance* (@sec-BottomExtraDistance) and *BottomChamfer* (@sec-BottomChamfer) defines the overall shape of the support plate — and can be used to increase the strength of the support plate. 


## Side Supports 


::: {#fig-side-support layout-ncol=2}

![Side Suppors as seen from the top]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/SideSupport_Top.png){#fig-SideSupportTop .lightbox}

![Side Suppors as seen from the side]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/SideSupport_Side.png){#fig-SideSupportSide .lightbox}

Side Support parameters
:::

### SupportLength {#sec-SupportLength}

Default value: 0.6 mm 

*SupportLength* (default: 0.6mm) defines the overall vertical distance of each support connected to the front of the pyramid model, as shown by the red arrow in the middle of @fig-SideSupportTop.

This parameter, along with *SupportThickness* (@sec-SupportThickness) define the shape of each individual support connected to the fly pyramid side. 

 

### SupportThickness {#sec-SupportThickness}

*SupportThickness* (default: 0.4mm) defines the overall horizontal distance of each support connected to the front of the pyramid model, as shown by the red arrow in the middle of @fig-SideSupportSide.

This parameter, along with *SupportLength* (@sec-SupportLength) define the shape of each individual support connected to the fly pyramid side. 

 
### ConnectionLength {#sec-ConnectionLenght}

*ConnectionLength* (default: 3.5mm) defines the overall distance of each support from the side of the pyramid model to the start of the side-support plate, as shown by the red arrow near the top of @fig-SideSupportTop.

This parameter, along with *SupportLength* (@sec-SupportLength) and *SupportThickness* (@sec-SupportThickness) helps define the overall ease of removing the side supports from the model. 

 

### SupportDistanceFromBottom {#sec-SupportDistanceFromBottom}

*SupportDistanceFromBottom* (default: 2mm) defines the overall distance from the bottom of the first support to the bottom of the entire model. This parameter also defines the overall length of each support on the side of the support plate, as shown by the red arrow in @fig-SideSupportTop.

This parameter, along with *ConnectorWidth* (@sec-ConnectorWidth) defines the overall dimensions of each support connected to the support plate side. 

 

### ConnectorWidth {#sec-ConnectorWidth}

*ConnectorWidth* (default: 1mm) defines the overall width of each support on the support plate side, as shown by the red arrow in @fig-SideSupportSide.

This parameter, along with the *SupportDistanceFromBottom* parameter (@sec-SupportDistanceFromBottom) defines the overall dimensions of each support connected to the support plate side. 

 

### ExtraPlateDistance {#sec-ExtraPlateDistance}

*ExtraPlateDistance* (default: 2mm) defines the extra length on each side of the supports of the support plate, as shown by the red arrow in @fig-SideSupportSide.

This parameter, along with *SidePlateThickness* (@sec-SidePlateThickness) determines the overall shape of the side support plate. 

 

### NumberOfSideSuppports {#sec-NumberOfSideSupports}

*NumberOfSideSupports* (default: 8) defines the total number of sides supports supporting the model. 

This parameter helps define how well the entire side of the model is supported. 

 

### SidePlateThickness {#sec-SidePlateThickness}


*SidePlateThickness* (default: 3mm) determines the overall thickness of the side support plate, as shown in the @fig-SideSupportTop.


## Fly Field of View Reference Angles 

These parameters are shown as reference in the FreeCAD spreadsheet and display the possible field of view that the fly would have if mounted in that particular setup. 

::: {#fig-field-of-view layout-ncol=2}

![FrontReferenceAngle (@sec-FrontReferenceAngle)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_FrontReferenceAngle.png){#fig-FrontReferenceAngle .lightbox}

![RightReferenceAngle (@sec-RightReferenceAngle)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_RightReferenceAngle.png){#fig-RightReferenceAngle .lightbox}

![LeftReferenceAngle (@sec-LeftReferenceAngle)]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/Param_LeftReferenceAngle.png){#fig-LeftReferenceAngle .lightbox}

Field of view
:::

### FrontReferenceAngle {#sec-FrontReferenceAngle}

::: {.callout-tip}
#### Reference

This parameter cannot be changed and is only used as a reference 
:::


*FrontReferenceAngle* (default: 12°) measures the angle from the very bottom-front of the fly hole, where the fly eyes will likely be close to, all the way to the very end of the model, as shown by the red angle in @fig-FrontReferenceAngle.

This parameter, along with *LeftReferenceAngle* (@sec-LeftReferenceAngle) and *RightReferenceAngle* (@sec-RightReferenceAngle) show the field of view that the fly can see with a specific pyramid model. 


### RightReferenceAngle {#sec-RightReferenceAngle}

::: {.callout-tip}
#### Reference

This parameter cannot be changed and is only used as a reference 
:::


*RightReferenceAngle* (default: 9°) measures the angle from the very bottom-right of the fly hole, where the fly eyes will likely be close to, all the way to the very right end of the model, as shown by the red angle in @fig-RightReferenceAngle.

This parameter, along with *LeftReferenceAngle* (@sec-LeftReferenceAngle) and *FrontReferenceAngle* (@sec-FrontReferenceAngle) show the field of view that the fly can see with a specific pyramid model. 

### LeftReferenceAngle {#sec-LeftReferenceAngle}

::: {.callout-tip}
#### Reference

This parameter cannot be changed and is only used as a reference 
:::

*LeftReferenceAngle* (default: 9°) measures the angle from the very bottom-left of the fly hole, where the fly eyes will likely be close to, all the way to the very left end of the model, as shown by the red angle in @fig-LeftReferenceAngle.

This parameter, along with *FrontReferenceAngle* (@sec-FrontReferenceAngle) and *RightReferenceAngle* (@sec-RightReferenceAngle) show the field of view that the fly can see with a specific pyramid model. 



# Print Instructions 

## FreeCAD export instructions 


::: {#fig-freecad-export layout-ncol=2}

![Switch to the *Mesh* workspace in FreeCAD]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/FreeCAD_export01.png){#fig-FreeCAD_export01 .lightbox}

![Convert parametrizable FreeCAD bodies to static meshes]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/FreeCAD_export03.png){#fig-FreeCAD_export03 .lightbox}

![Merge several meshes into a single exportable object]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/FreeCAD_export05.png){#fig-FreeCAD_export05 .lightbox}

FreeCAD export
:::

This can be skipped if FreeCAD is not being used to parameterize the model, and the default 3D files are being used. 

After editing the parameters of the FreeCAD model, exit out to the main menu. Next, click on the dropdown on the top bar of the screen that says **Part Design** or **Start** under the **Windows** button, and change the dropdown menu to **Mesh** (see @fig-FreeCAD_export01).

After this, select the *Fly Pyramid Body*, *Bottom Supports*, and *SideSupports* folders on the left, as seen below, and click on the *Create Mesh From Shape* option, and select the *Ok* button with the default settings (see @fig-FreeCAD_export03). This will generate meshes of the selected bodies with the same base name and the addition *(Meshed)*.

After this, select all the new meshes and click the merge button, on the top toolbar (see @fig-FreeCAD_export05). This generates a single mesh for all the different bodies.

With this final mesh, turn off the visibility of all the other objects to make sure that there are no glitches or holes in the design, and then right click on the final singular mesh and select *Export Mesh…* as a `*.stl` file. After this, the mesh objects can be deleted.


## Slicer Setup Tutorial  

The slicer software being used is called [Lychee Slicer](https://mango3d.io/resin-sla-msla-3d-printers).

After setting up the settings of the printer in the software and importing the fly pyramid (stl or obj file) model into the slicer. The fly pyramids should be printed individually and not connected to each other, with the bottom supports laying on the plate. However, it is recommended that the fly pyramids are printed relatively close to each other, to minimize possible damage from the sloshing of the liquid resin (this is not determined to be a big problem, but it is best to be safe). After this, export the model and print it. 
 
![Example of pyramids in the Lychee slicer]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/lychee.png){#fig-lychee .lightbox}


## Build Plate Removal 

After the prints are finished being printed, carefully remove the build plate from the printer, and lay it flat on the table. After this, use a small razor blade to scrape under the bottom supports near the back of the model, until the bottom supports are loose. Next, use the razor, or even your finger, to apply pressure to the bottom of the side supports, until they come loose. All of this is shown in the following short video. 

{{< video {{site.baseurl}}/assets/img/Parametric-Fly-Holder/Fly_Pyramid_Removal.mov >}}

After this, you can wash each of the prints, with either IPA or water (depending on the resin being used), and then cure it for around 5-10 minutes to solidify the resin. 


## Recommended Resins and Exposure Times 

Throughout designing and testing the newly designed fly-pyramids, 5 different resins were tested with various thicknesses and measurements. The strength of each resin was determined by the total downward force that the bottom of the hole could support before reaching failure. This was measured by placing a small wire through the hole, with a stopper at the top, which prevents the wire from passing all the way through the hole. After this, weight is applied downward on the wire with a small bucket and weights inside. This setup is shown in @fig-StrengthTestSetup.

![Strength test]({{site.baseurl}}/assets/img/Parametric-Fly-Holder/StrengthTest.png){#fig-StrengthTestSetup}


A variety of fly pyramids with different resins, *BottomOfPyramidThickness* (@fig-BottomOfPyramidThickness) and *TopOfPyramidThickness* (@fig-TopOfPyramidThickness) measurements were measured. Each resin was tested with three *BottomOfPyramidThickness* measurements (0.1mm, 0.15mm, 0.2mm) and two *TopOfPyramidThickness* measurements (0.5mm and 1mm). Each of these combination’s max weight held (g) was measured twice, accounting for 12 tests per resin, as seen in the @tbl-StrengthTest.

The full data sheet can be seen here: Strength Test Results.xlsx  The following graph displays the total strength measurements for each of the five resins. The X-axis represents the ”BottomPyramidThickness” and the Y-axis measures the maximum weight held per pyramid. Each color in the graph represents the measurements for a particular resin, as shown by the legend. Furthermore, `x` represent measurements with a *TopOfPyramidThickness*  of 0.5mm (see @fig-TopOfPyramidThickness) and `+` represent ones with a thickness of 1mm.

::: {#fig-StrengthTest}
```{python}
#| echo: false
import pandas as pd
from IPython.display import Markdown, display
import seaborn as sns

# Phrozen
resin = ["Phrozen TR250"]*6
bottom = [0.1]*2 + [0.15]*2 + [0.2]*2
top = [0.5]*6
weight = [200, 195, 414, 465, 733, 764]

resin += ["Phrozen TR250"] * 6
bottom += [0.1]*2 + [0.15]*2 + [0.2]*2
top += [1]*6
weight += [255, 276, 548, 546, 966, 995]

# Elegoo Standard
resin += ["Elegoo Standard"]*6
bottom += [0.1]*2 + [0.15]*2 + [0.2]*2
top += [0.5]*6
weight += [90, 96, 147, 185, 430, 431]

resin += ["Elegoo Standard"] * 6
bottom += [0.1]*2 + [0.15]*2 + [0.2]*2
top += [1]*6
weight += [160, 120, 318, 300, 431, 475]

# Elegoo ABS-like 3.0
resin += ["Elegoo ABS-like 3.0"]*6
bottom += [0.1]*2 + [0.15]*2 + [0.2]*2
top += [0.5]*6
weight += [66, 101, 297, 302, 490, 520]

resin += ["Elegoo ABS-like 3.0"] * 6
bottom += [0.1]*2 + [0.15]*2 + [0.2]*2
top += [1]*6
weight += [120, 120, 300, 356, 718, 710]

# Anycubic ABS-like Pro 2
resin += ["Anycubic ABS-like Pro 2"]*6
bottom += [0.1]*2 + [0.15]*2 + [0.2]*2
top += [0.5]*6
weight += [66, 66, 88, None, 96, 82]

resin += ["Anycubic ABS-like Pro 2"] * 6
bottom += [0.1]*2 + [0.15]*2 + [0.2]*2
top += [1]*6
weight += [103, None, 152, 162, 195, 232]

# Anycubic Rigid 100
resin += ["Anycubic Rigid 100"]*6
bottom += [0.1]*2 + [0.15]*2 + [0.2]*2
top += [0.5]*6
weight += [341, 317, 586, 613, 976, 985]

resin += ["Anycubic Rigid 100"] * 6
bottom += [0.1]*2 + [0.15]*2 + [0.2]*2
top += [1]*6
weight += [394, 371, 655, 678, 1112, 1096]

df = pd.DataFrame({'Resin Type': resin, 'BottomOfPyramidThickness': bottom, 'TopOfPyramidThickness': top, 'weight': weight})
#display(Markdown(df.to_markdown(index=False)))
#plt = sns.scatterplot(data=df, x='BottomOfPyramidThickness', y='weight', hue="Resin Type", style="TopOfPyramidThickness")
plt2 = sns.swarmplot(data=df[df['TopOfPyramidThickness']==1],  x='BottomOfPyramidThickness', y='weight', hue="Resin Type", marker="+", linewidth=1)
plt2 = sns.swarmplot(data=df[df['TopOfPyramidThickness']==0.5],  x='BottomOfPyramidThickness', y='weight', hue="Resin Type", marker="x", linewidth=1, legend=False)
#plt2 = sns.violinplot(data=df,  x='BottomOfPyramidThickness', y='weight', hue="Resin Type", inner="TopOfPyramidThickness")
plt2.set_xlabel("Bottom of Pyramid Thickness (mm)")
plt2.set_ylabel("maxiumum weight (g)")
plt2.set_yticks([200, 500, 1000])

```

Strength test with 5 different resins, three different material thicknesses at the bottom of the pyramid (in color, @sec-BottomOfPyramidThickness) and two different thicknesses at the top of the pyramid (0.5mm with `x`, 1mm with `+`, also see @sec-TopOfPyramidThickness).
:::



Each resin was printed with the following exposure times on the Elegoo Mars 3 printer:  


However, some rough tests have shown that potentially decreasing the layer height (down to 0.025 mm) can increase the quality and strength of the print, with the cost of increased printing time. 

# Appendix

## Strength test

Measurements from the strenght test of different resins. All the data is visualized in @fig-StrengthTest

::: {#tbl-StrengthTest}
```{python}
#| echo: false
display(Markdown(df.to_markdown(index=False)))
```

Measured maximum weight per resin at different print settings
:::

