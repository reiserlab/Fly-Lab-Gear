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

In this example I will walk you through printing a Fly Pyramid. Originally Fly Pyramids had been milled from PEEK plastic, a difficult and expensive process. Based on our experience with the original Fly Pyramid in the Reiser lab and with the help of engineers from the Janelia Experimental Technology Support team, we developed the Fly Pyramid from the ground up to be optimized towards replicability with widely available tools.

## Get a resin printer, resin, and software

We optimized the prints to work well on a commercially widely available printer, the [Phrozen Sonic Mini 8K](https://phrozen3d.com/products/phrozen-sonic-mini-8k-resin-3d-printer). At the time of writing this resin printer is available at many sources for [around $500](https://a.co/d/gY7QIjW). Other printers will work, too. For example, we tested some prints on an Elgoo Mars 3 and they looked good as well.

![]({{site.baseurl}}/assets/img/Collection/print-3d/resin.jpg){:.ifr .pop}

On your computer, you will need a slicer software that converts the `*.stl` model file into a format that the printer can process. While the Phrozen printer comes with the Software Chitubox, I am using the [Lychee Slicer](https://lychee.mango3d.io/) for this example. To use this software for free, you will need to create an account at the Mango3D website. This is possible from within the software: the first time you start Lychee it will ask you to confirm several agreements and then either log in or create a new account. For the print I am only using features that are available in the free version.

The community behind Lychee shares printer and resin settings. This makes it easy to adapt the print to your specific setup.

For our prints we used the [Elgoo Standard Photopolymer Resin in Black](https://a.co/d/fotTq6A). One bottle will last you a very long time and many Fly Pyramids. Other resins might work as well, but we did not do a lot of tests.

You will need a USB thumb drive to transport the model between your computer and the 3D printer.

## Printer and resin setup

You only need to set up the the printer once, and adjust the settings of the resin whenever you change to a different type of resin or if you experience some errors.

![]({{site.baseurl}}/assets/img/Collection/print-3d/lychee_add-printer.png){:.ifr .pop}
During the first start of the the Lychee Slicer software it will ask you to add a printer. If it does, choose a "Resin 3D printer", not a "Filament 3D Printer". If you have used the software before or have set up another printer, you can set up a new printer via _File_{:.gui-txt} → _Preferences_{:.gui-txt} → _Printer and resins_{:.gui-txt}.

![]({{site.baseurl}}/assets/img/Collection/print-3d/lychee_add-phrozen.png){:.ifr .pop}
Lychee comes with profiles of many different printers. Since we are using a Phrozen Sonic Mini 8K in this example, I searched for it by name and then seelcted the appropriate machine.
{:.clear}

![]({{site.baseurl}}/assets/img/Collection/print-3d/lychee_add-resin.png){:.ifr .pop}
The Lychee community collects and shares profiles for a combination of printers and resins. For the Fly Pyramid on this specific printer and with the Elgoo Rapid resin we made good experiences with 3.5s per layer and 4mm lift.
{:.clear}

![]({{site.baseurl}}/assets/img/Collection/print-3d/lychee_configure-resin.png){:.ifr .pop .clear}
This profiles comes with the settings illustrated in the screenshot. These settings work well for us and will take about 3hrs to print a Fly Pyramid, but depending on the resin, printer, and environment you are operating your printer in, you might need to adjust some of the settings.
{:.clear}

## Slice and start printing

![]({{site.baseurl}}/assets/img/Collection/print-3d/lychee_repair-model.png){:.ifr .pop .clear}
Once you set up the printer and resin, you can load the model into Lychee. Choose the appropriate model from our main menu on the left and download the associated `*.stl` file.

Once you opened the file in Lychee, the software might complain about some error in the model. That is nothing to worry about and Lychee can repair most issues after you click on *Repair 3D model*{:.gui-btn}. I recommend to move the model to one side of the build plate as it is easier to remove later.

If you need more than the number of plates in that `*.stl` files, you can easily duplicate the model without adding time to the printing process. I recommend to let the round supports overlap a little while keeping a distance between the pyramids.

![]({{site.baseurl}}/assets/img/Collection/print-3d/lychee_skip-prepare.png){:.ifr .pop}
Don't add any support in the *Prepare*{:.gui-txt} step of Lychee software.
{:.clear}

![]({{site.baseurl}}/assets/img/Collection/print-3d/lychee_select-antialiasing.png){:.ifr .pop}
In the *Export*{:.gui-txt} tab choose the *Smooth Surface*{:.gui-btn} *Anti-aliasing*{:.gui-btn}.
{:.clear}


![]({{site.baseurl}}/assets/img/Collection/print-3d/lychee_export-ctb.png){:.ifr .pop .clear}
The Phrozen printer requires `*.ctb` files, export the model as a file to an USB thumb drive. In the free version of Lychee you will see some advertisement before the actual slicing happens.
{:.clear}

![]({{site.baseurl}}/assets/img/Collection/print-3d/lychee_slicing.png){:.ifr .pop .clear}
The slicing itself will take a minute or two. In my case the current version of Lychee "reliably" crashed after the export, but generated file was still valid.
{:.clear}

![]({{site.baseurl}}/assets/img/Collection/print-3d/phrozen_start-print.jpg){:.ifr .pop}
After you transfer the USB thumb drive to the printer, you will see a small preview of your model. Make sure that the printer is ready for the print and then press the print button on the printer. Now you have to wait about 3 hours to see the results.
{:.clear}

## Post-processing

![]({{site.baseurl}}/assets/img/Collection/print-3d/post_clean-plate.jpg){:.ifr .pop}
When the print is done, take out the build plate and remove the liquid resin with a plastic spatula as good as you can.
{:.clear}

![]({{site.baseurl}}/assets/img/Collection/print-3d/post_separate-support.jpg){:.ifr .pop}
While the pyramids are still on the build plate, use a metal scraper and preferably a hammer with plastic or vinyl head to separate the pyramids from the support cylinders. Use the hammer to cut the support all the way down to the build plate.
{:.clear}

![]({{site.baseurl}}/assets/img/Collection/print-3d/post_remove-pyramids.jpg){:.ifr .pop}
Use the same hammer and scraper method to separate the pyramids from the build plate.
{:.clear}

![]({{site.baseurl}}/assets/img/Collection/print-3d/post_bath.jpg){:.ifr .pop}
Follow the normal post processing steps for your resin. For the Elgoo resin in this example, I give it a 5 min wash in an alcohol bath without heat.
{:.clear}

![]({{site.baseurl}}/assets/img/Collection/print-3d/post_uv.jpg){:.ifr .pop}
Afterwards a 10min exposure to UV light will solidify any leftover resin and make the whole print stronger.
{:.clear}

![]({{site.baseurl}}/assets/img/Collection/print-3d/post_scrape-edge.jpg){:.ifr .pop}
For the final touch, you can use a razor blade to smoothen the edge of the print a little bit. In the first few prints you might break a few of the fly pyramids, especially during the hammering procedure, but with some practice we have a yield close to 100% for the production.
{:.clear}