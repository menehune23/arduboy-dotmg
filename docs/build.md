# dotMG Build Guide

Before getting started, be sure you've gathered [parts, materials, and tools](#parts-materials-and-tools). Then follow the steps below:

1. The system board and shell will come as one panel (three boards connected by break-away tabs). After receivig them, separate the shell boards from the main PCB and file down any rough edges (pliers might help break off the tabs too).

1. From there, it's a matter of soldering the components to their marked locations on the boards. Here are a few tips:

    - **For the game cartridge:**

      - The Pro Micro USB port should point to the **left** when the cart is facing you (this should be apparent given the outline on the cart PCB)

      - Trim all leads as flush as possible

      - Break off the small breakaway tab between the 3rd and 4th contacts and stuff it in the system's card connector at the same position (tweezers help here) -- this serves as a mechanical reverse cart protector

    - **For the system**, the recommended soldering order is as follows (trim all leads as flush as possible along the way):

      1. Solder the D-Pad and A/B buttons **first**

      1. Solder the rear components

          > There's a 1-pin right-angle header that sits under the charger board, purely for mechanical alignment (no electrical function) -- be sure to solder it **before** soldering the charger board

          > The reset button should be soldered to the rear side, **not the front**

      1. Solder the front components

          > **IMPORTANT:**
          >
          > - Solder the display **last**
          >
          > - For dotMG Advance, you may need to trim the upper pin on the display before soldering to the system board (so the pin isn't blocked by the charger board)
          >
          > - Diodes are **polarized**! Ensure the band on the diode body lines up with the image on the PCB.

1. Now, plug in the battery and mount it to the lower back of the system board using a small piece of mounting tape
    > **IMPORTANT!** LiPo batteries can be dangerous if mishandled or punctured, as they can catch fire or explode. Use caution and keep this project out of reach of children unless supervised. [Read more about battery safety here](https://learn.adafruit.com/li-ion-and-lipoly-batteries).

    > **Tips:**
    >
    > - Don't use too much mounting tape, or it will be difficult to remove the battery when eventually replacing. A small 0.5"-by-0.5" square will do.
    >
    > - Consider laying down a few strips of PVC tape under where the battery will go, to keep any poorly-trimmed leads from scratching or puncturing the battery
    >
    > - By default, the Adafruit battery charger module is configured to charge at 100mA. You can solder a jumper on it to increase this to 500mA, but **only do this if you know what you're doing**, as it should only be used with batteries of capacity 500mAh or more (and preferably 1000mAh to be safe).
    >
    > - For dotMG Advance, the battery will likely fit best on the left side of the board (when the board is flipped such that the rear side is facing you). This requires the battery wires to be about 4.5" long (as noted in BOM). You can lay the wires along the "canyon" between the card connector and EXT header pins to keep them out of the way during shell assembly.

1. Attach button caps

1. Assemble the shell using the nylon standoffs and screws. Male-female standoffs should go in front and attach to the female-female standoffs on the back side. The shell front and back can then be mounted to the standoffs with the screws.

    > - The shell mounting holes are slightly enlarged to allow for countersink nylon screws to "sink" in a bit
    >
    > - Depending on the screw and standoff lengths, you may need to trim them with a hobby knife to match the lengths in the [BOM](#parts)

## Parts, Materials, and Tools

### Parts

The [BOM can be found here as a PDF](bom.pdf).

See the [PCB Ordering Guide](pcb-ordering.md) if ordering PCBs yourself.

Other helpful links:

- [Full BOM as CSV](bom.csv) (can be uploaded to Digi-Key cart)
- [Adafruit Wishlist](http://www.adafruit.com/wishlists/520023), to easily order items available from Adafruit

### Materials & Tools

- Soldering iron and solder

- Phillips-head screwdriver, for assembling shell

- Flush cutters (NOT diagonal cutters), for trimming leads

- Metal file or sandpaper, for trimming board tabs

- Tweezers

- _Optional_: Needle-nose pliers, for trimming board tabs

- _Optional_: Hobby knife (if trimming screws/standoffs)

- _Optional_: PVC (electrical) tape
