---
title: Printing a Fly Pyramid
parent: Collections
permalink: /how-to-print-a-fly-pyramid
nav_order: 3
has_toc: true
toc_levels: 1
---

# Preface

In this document I walk you through the process of printing one of our models on a 3D printer. Model, printer, and software are just examples at one moment in time (April 2023). This example might help you to adapt the printing process to your own setup while the details may differ.

# Preparation

The two different types of models in our collection can be differentiated by the scale of their features. Some parts like the stands and sphere holders operate on a human scale, others like the fly pyramids and tethers directly interface with the fly on a fly scale. The rule of thumb is, that fly scale models need to be printed on high resolution printers (e.g. resin printers), while human scale models can be printed on medium or high resolution printers (Fused Deposition Modeling (FDM) or resin printer).

In this example I will walk you through printing a Fly Pyramid. Originally Fly Pyramids had been milled from PEEK plastic, a difficult and expensive process. Based on our experience with the original Fly Pyramid in the Reiser lab and with the help of [Jeff Talbot](https://www.janelia.org/people/jeff-talbot) from the [Janelia Experimental Technology](https://www.janelia.org/support-team/janelia-experimental-technology) Support team, we developed the Fly Pyramid from the ground up to be optimized towards replicability with widely available tools.

## Get a resin printer, resin, and software

We optimized the prints to work well on a commercially widely available printer, the [Phrozen Sonic Mini 8K](https://phrozen3d.com/products/phrozen-sonic-mini-8k-resin-3d-printer). At the time of writing this resin printer is available at many sources for [around $500](https://a.co/d/gY7QIjW). Other printers will work, too. For example, we tested some prints on an Elegoo Mars 3 and they looked good as well.

![A bottle of Elegoo Standard Photopolymer Resin Black]({{site.baseurl}}/assets/img/Collection/print-3d/resin.jpg){:.ifr .pop}

On your computer, you will need a slicer software that converts the `*.stl` model file into a format that the printer can process. While the Phrozen printer comes with the Software Chitubox, I am using the [Lychee Slicer](https://lychee.mango3d.io/) for this example. To use this software for free, you will need to create an account at the Mango3D website. This is possible from within the software: the first time you start Lychee it will ask you to confirm several agreements and then either log in or create a new account. For the print I am only using features that are available in the free version.

The community behind Lychee shares printer and resin settings. This makes it easy to adapt the print to your specific setup.

For our prints we used the [Elegoo Standard Photopolymer Resin in Black](https://a.co/d/fotTq6A). One bottle will last you a very long time and many Fly Pyramids. Other resins might work as well, but we did not do a lot of tests.

You will need a USB thumb drive to transport the model between your computer and the 3D printer.

## Printer and resin setup

You only need to set up the the printer once, and adjust the settings of the resin whenever you change to a different type of resin or if you experience some errors.

![Screenshot of the Lychee GUI to choose between adding a Resin 3D printer and a Filament 3D printer, with the Resin 3D printer selected]({{site.baseurl}}/assets/img/Collection/print-3d/lychee_add-printer.png){:.ifr .pop}
During the first start of the the Lychee Slicer software it will ask you to add a printer. If it does, choose a "Resin 3D printer", not a "Filament 3D Printer". If you have used the software before or have set up another printer, you can set up a new printer via _File_{:.gui-txt} → _Preferences_{:.gui-txt} → _Printer and resins_{:.gui-txt}.

![Printer selection dialog in Lychee: with a search phrase 'Phroz' the 'Phrozen Sonic Mini 8K' is one of the options.]({{site.baseurl}}/assets/img/Collection/print-3d/lychee_add-phrozen.png){:.ifr .pop}
Lychee comes with profiles of many different printers. Since we are using a Phrozen Sonic Mini 8K in this example, I searched for it by name and then seelcted the appropriate machine.
{:.clear}

![Resin profile selection dialog with 'Phrozen Sonic Mini 8K' as the printer and 'Elegoo Rapid / Standard Black' as the resin. A profile with 50µm resolution and 3.5s time is selected.]({{site.baseurl}}/assets/img/Collection/print-3d/lychee_add-resin.png){:.ifr .pop}
The Lychee community collects and shares profiles for a combination of printers and resins. For the Fly Pyramid on this specific printer and with the Elegoo Rapid resin we made good experiences with 3.5s per layer and 4mm lift.
{:.clear}

![Parameters of the profile. Importantly there are 12 Burn in Layers with 35s exposure and 3.5s with a 4mm lift at 60 / 180 mm/s selected.]({{site.baseurl}}/assets/img/Collection/print-3d/lychee_configure-resin.png){:.ifr .pop .clear}
This profiles comes with the settings illustrated in the screenshot. These settings work well for us and will take about 3hrs to print a Fly Pyramid, but depending on the resin, printer, and environment you are operating your printer in, you might need to adjust some of the settings.
{:.clear}

## Slice and start printing

![A single model with three Fly Pyramids on the virtual build plate inside the Lychee slicer software. The model is in red and the 'Repair 3D model' button is highlighted.]({{site.baseurl}}/assets/img/Collection/print-3d/lychee_repair-model.png){:.ifr .pop .clear}
Once you set up the printer and resin, you can load the model into Lychee. Choose the appropriate model from our main menu on the left and download the associated `*.stl` file.

Most of the models we provide will load without issues. If you see that Lychee is complaining about some kind of error, then please let us know although in most cases this is nothing to worry about. Lychee can repair many issues after you click on *Repair 3D model*{:.gui-btn}.

I recommend to move the model to one side of the build plate as it is easier to remove later. When you place the model, try to use the same alignment I show in the images with the upper part of the pyramid facing towards the empty part of the fly plate and the thickened edge on the build plate.

![Several copies of the Fly Pyramids are in the 'Lychee Slicer' with the 'Prepare' tab activated. No extra support is generated here.]({{site.baseurl}}/assets/img/Collection/print-3d/lychee_skip-prepare.png){:.ifr .pop}
If you need more than the number of plates in that `*.stl` files, you can easily duplicate the model without adding time to the printing process. I recommend to let the round supports overlap a little while keeping a distance between the pyramids.

Don't add any support in the *Prepare*{:.gui-txt} step of Lychee software.
{:.clear}

![The 'Anti-Aliasing' dropdown menu in the 'Export' tab is open and 'Smooth Surfaces' is selected. The model from the image before is shown.]({{site.baseurl}}/assets/img/Collection/print-3d/lychee_select-antialiasing.png){:.ifr .pop}
In the *Export*{:.gui-txt} tab choose the *Smooth Surface*{:.gui-btn} *Anti-aliasing*{:.gui-btn}.
{:.clear}

![With 'ctb (v4)' as the 'Slice Format', the 'Export slices to file' button is highlighted in green.]({{site.baseurl}}/assets/img/Collection/print-3d/lychee_export-ctb.png){:.ifr .pop .clear}
The Phrozen printer requires `*.ctb` files, export the model as a file to an USB thumb drive. In the free version of Lychee you will see some advertisement before the actual slicing happens.
{:.clear}

![A progress bar with 64/588 shows the progress of the slicing process and a white on black background image displays the current slice.]({{site.baseurl}}/assets/img/Collection/print-3d/lychee_slicing.png){:.ifr .pop .clear}
The slicing itself will take a minute or two. In my case the current version of Lychee "reliably" crashed after the export, but generated file was still valid.
{:.clear}

![The Phrosen Sonic Mini 8K printer with an attached USB thumb drive and a depiction of the Fly Pyramids on the display. A finger is about to press the start button.]({{site.baseurl}}/assets/img/Collection/print-3d/phrozen_start-print.jpg){:.ifr .pop}
After you transfer the USB thumb drive to the printer, you will see a small preview of your model. Make sure that the printer is ready for the print and then press the print button on the printer. Now you have to wait about 3 hours to see the results.
{:.clear}

## Post-processing

![The build plate with two models of three Fly Pyramids each. A hand uses a plastic scraper to remove excessive resin.]({{site.baseurl}}/assets/img/Collection/print-3d/post_clean-plate.jpg){:.ifr .pop}
When the print is done, take out the build plate and remove the liquid resin with a plastic spatula as good as you can.
{:.clear}

![A metal scraper sits on top of the connection between the support and Fly Pyramid, still attached to the build plate. A hammer on top of the scraper handle shows how to separate support and Fly Pyramid.]({{site.baseurl}}/assets/img/Collection/print-3d/post_separate-support.jpg){:.ifr .pop}
While the pyramids are still on the build plate, use a metal scraper and preferably a hammer with plastic or vinyl head to separate the pyramids from the support cylinders. Use the hammer to cut the support all the way down to the build plate.
{:.clear}

![The metal scraper flat on the build plate next to the Fly Pyramid. Two pyramids have already been removed, the previously separated support cylinders are still attached to the build plate.]({{site.baseurl}}/assets/img/Collection/print-3d/post_remove-pyramids.jpg){:.ifr .pop}
Use the same hammer and scraper method to separate the pyramids from the build plate. The scraper that came with the Phrozen printer worked better than others we tried: the combination of thickness, tapering, and material allowed us to remove the parts without damaging the build plate or the fly pyramid.
{:.clear}

![An open washer (formlabs wash) with a metal basked and some liquid inside.]({{site.baseurl}}/assets/img/Collection/print-3d/post_bath.jpg){:.ifr .pop}
Follow the normal post processing steps for your resin. For the Elegoo resin in this example, I give it a 5 min wash in an alcohol bath. The picture shows a [formlabs Form Wash](https://formlabs.com/store/post-processing/form-wash/), but a [there are other options](https://hackaday.com/2020/10/06/3d-printering-wash-parts-better-and-make-solvent-last-longer/).
{:.clear}

![A UV curing station with a timer set to 9:58.]({{site.baseurl}}/assets/img/Collection/print-3d/post_uv.jpg){:.ifr .pop}
Afterwards a 10min exposure to UV light (without heat) will solidify any leftover resin and make the whole print stronger. Here I show a [formlabs Form Cure](https://formlabs.com/store/post-processing/form-cure/), but any UV curing station should work.
{:.clear}

![A hand holding a single Fly Pyramid while another hand scratches a razor blade along one of the edges.]({{site.baseurl}}/assets/img/Collection/print-3d/post_scrape-edge.jpg){:.ifr .pop}
For the final touch, you can use a razor blade to smoothen the edge of the print a little bit. In the first few prints you might break a few of the fly pyramids, especially during the hammering procedure, but with some practice we have a yield close to 100% for the production.
{:.clear}