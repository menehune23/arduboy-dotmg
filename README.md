# Arduboy CE

A DIY cartridge-based Arduboy clone!

## Programming

If you've already [built your own Arduboy CE](#build-your-own), you can program game cartridges using the Arduino IDE and the custom board package found in this repo. To get going, follow these steps:

1. Add `https://raw.githubusercontent.com/menehune23/arduboy-ce/main/board-packages/package_arduboy-ce_index.json` to board manager URLs in the Arduino IDE (found in settings)

1. Open the board manager from the Arduino IDE `Tools` menu, then search for "Arduboy CE" and install

1. Connect the game cartridge to your computer using a micro-USB cable, then select the `Arduboy CE` board from the `Tools` menu

1. If a USB port was not selected for you, select one and program your favorite game or example onto your game cartridge!

> **Note:** The Arduboy CE board package already contains its own versions of Arduboy libraries (`Arduboy`, `Arduboy2`, `ArduboyTones`, `ATMlib`, etc.). To avoid confusing compiler errors, you must **uninstall these libraries** if you've previously installed them. (To program an official Arduboy, you'll need to reinstall them or use the [Homemade Arduboy Package](https://github.com/MrBlinky/Arduboy-homemade-package) and select a standard Arduboy from that package's boards -- similar functionality will be added to this project soon.)

## Build Your Own!

1. Gather [parts, materials, and tools](#parts-materials-and-tools)

1. Order PCBs ([JLC PCB](jlcpcb.com) works well). Recommended settings:

   - **Cart**: 1.0mm thickness (required to fit in slot), ENIG HASL finish, chamfered goldfingers (as of this writing, JLC PCB stopped allowing chamfering on a board this small -- no big deal, but ensure goldfingers at least)

   - **System**: 1.2mm thickness, ENIG HASL finish

   - Gerber files can be found in this repo under [hardware](hardware) sub-directories. Compress the desired versioned sub-directory to a ZIP file to upload to JLC PCB.

   - Gerber files include a `JLCJLCJLCJLC` text element for specifying the JLC PCB order number location (choose "Specify location" when ordering)

   - In a pinch, regular non-ENIG HASL can be chosen to save money. For the system, it looks better with ENIG (gold color). For the cart, ENIG is required if goldfingers are selected when ordering.

   - The system board and shell will come as one panel (three boards connected by break-away tabs). After receivig them, separate the shell boards from the main PCB and file down any rough edges (pliers might help break off the tabs too).

1. From there, it's a matter of soldering the components to their marked locations on the boards. Here are a few tips:

    - For the game cartridge:

      - The Pro Micro USB port should point to the **left** when the cart is facing you (this should be apparent given the outline on the cart PCB)

      - Trim all leads as flush as possible

    - For the system, the recommended soldering order is as follows (trim all leads as flush as possible along the way):

        1. Solder the D-Pad and A/B buttons **first**

        1. Solder the rear components
           > There's a 4-pin right-angle header that sits under the charger board, purely for mechanical alignment (no electrical function) -- be sure to solder it **before** soldering the charger board

        1. Solder the front components
           > Solder the display **last**, so you can solder the EXT header underneath it

1. Now, plug in the battery and mount it to the lower back of the system board using a small piece of mounting tape
   > **IMPORTANT!** LiPo batteries can be dangerous if mishandled or punctured, as they can catch fire or explode. Use caution and keep this project out of reach of children unless supervised. [Read more about battery safety here](https://learn.adafruit.com/li-ion-and-lipoly-batteries).

   > **Tips:**
   >
   > - Don't use too much mounting tape, or it will be difficult to remove the battery when eventually replacing. A small 0.5"-by-0.5" square will do.
   >
   > - It's also recommended to **lay down a few strips of PVC tape under where the battery will go**, to keep any poorly-trimmed leads from scratching or puncturing the battery
   >
   > - By default, the Adafruit battery charger module is configured to charge at 100mA. You can solder a jumper on it to increase this to 500mA, but **only do this if you know what you're doing**, as it should only be used with batteries of capacity 500mAh or more (and preferably 1000mAh to be safe).

1. Attach button caps

1. Assemble the shell using the nylon standoffs and screws. Male-female standoffs should go in front and attach to the female-female standoffs on the back side. The shell front and back can then be mounted to the standoffs with the screws.

    > **Note:**
    >
    > - The shell mounting holes are slightly enlarged to allow for countersink nylon screws to "sink" in a bit
    >
    > - Depending on the screw and standoff lengths, you may need to trim them with a hobby knife to match the lengths in the [BOM](#parts)

## Parts, Materials, and Tools

### Parts

The [BOM can be found here as a PDF](bom.pdf).

Other helpful links:

- [Full BOM as CSV](bom.csv) (can be uploaded to Digi-Key cart)
- [Adafruit Wishlist](http://www.adafruit.com/wishlists/520023), to easily order items available from Adafruit

### Materials & Tools

- Soldering iron and solder

- Phillips-head screwdriver, for assembling shell

- Flush cutters (NOT diagonal cutters), for trimming leads

- Metal file or sandpaper, for trimming board tabs

- _Optional_: Needle-nose pliers, for trimming board tabs

- _Optional_: Hobby knife (if trimming screws/standoffs)

- _Optional_: PVC (electrical) tape, for covering board beneath battery to prevent scratching/puncture from trimmed leads


## License

Copyright (c) 2021 Andrew Meyer.

[Attribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA 4.0)](https://creativecommons.org/licenses/by-nc-sa/4.0/)

This project is for DIYers and hobbyists. It may not be used for anything considered commercial use without the author's explicit, written consent. Otherwise, use at your own risk and have fun!

**This project is not officially licensed or endorsed by [Arduboy](https://arduboy.com).**
