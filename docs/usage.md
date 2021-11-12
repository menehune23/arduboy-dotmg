# dotMG Usage Guide

## IDE Setup

If you've already [built your own dotMG](docs/build.md), you can program game cartridges using the Arduino IDE and the custom board package found in this repo. To get going, follow these steps:

1. Add `https://raw.githubusercontent.com/menehune23/arduboy-dotmg/main/board-packages/package_dotmg_index.json` to board manager URLs in the Arduino IDE (found in settings)

1. Open the board manager from the Arduino IDE `Tools` menu, then search for "dotMG" and install

1. Connect the game cartridge to your computer using a micro-USB cable, then select the `dotMG (Pro Micro)` board from the `Tools` menu

1. If a USB port was not selected for you, select one


## Uploading Games & Programs

1. [Select an Arduino sketch to upload](#game-resources) and open it in the Arduino IDE

1. Adjust compilation options via the `Tools` menu if desired (for example, you can specify that your game makes use of the RGB LED pins via this menu)

1. Click the upload button in the IDE to compile and upload!

> **IMPORTANT:** The dotMG board package already contains its own versions of Arduboy libraries (`Arduboy`, `Arduboy2`, `ArduboyTones`, `ATMlib`, etc.). To avoid confusing compiler errors, you must **uninstall these libraries** if you've previously installed them. (To program an official Arduboy, you'll need to reinstall them or use the [Homemade Arduboy Package](https://github.com/MrBlinky/Arduboy-homemade-package) and select a standard Arduboy from that package's board menu.)


### Game Resources

Below are some recommended places to get game sketches to upload to your cartridges:

- [Team ARG Museum](https://team-arg-museum.github.io)
- [Erwin's Arduboy Collection](https://arduboy.ried.cl)

> **Note:** If you come across `.hex` files, they're likely compiled for the original Arduboy and are not natively compatible with dotMG. For best results, locate the game's source code and upload using the steps given above.
