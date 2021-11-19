# dotMG Usage Guide

## IDE Setup

If you've already [built your own dotMG](build.md), you can program game cartridges using the Arduino IDE and the custom board package found in this repo. To get going, follow these steps:

1. Add `https://raw.githubusercontent.com/menehune23/arduboy-dotmg/main/board-packages/package_dotmg_index.json` to board manager URLs in the Arduino IDE (found in settings)

1. Open the board manager from the Arduino IDE `Tools` menu, then search for `dotMG` and install

1. Connect the game cartridge to your computer using a micro-USB cable, then select the `dotMG (Pro Micro)` board from the `Tools` menu

    > **Tip:** If you'd like, you may leave the game cartridge plugged into the console when connecting to your computer (likely, you'll need to remove the back shell to make room for the USB cable). If you do this, be sure to connect to the game cartridge's USB port, **not** the charging port on the console.
    >
    > It is OK and expected that the console will turn on in this case, regardless of the power switch position (because power is coming through the cartridge directly).

1. If a USB port was not selected for you in the IDE, select one

## Uploading Games

1. [Select an Arduino sketch to upload](#game-resources) and open it in the Arduino IDE

1. Adjust compilation options via the `Tools` menu, if needed (e.g. to [use an RGB LED](#rgb-led))

1. Click the upload button in the IDE to compile and upload!

> **IMPORTANT!**
>
> The dotMG board package contains its own versions of the Arduboy libraries (among others), which have been updated for compatibility with dotMG. To use dotMG, you must **uninstall [these libraries](/board-package-source/libraries)** from your IDE if you've previously installed them yourself. Otherwise they'll take precedence over the versions in the dotMG board package, leading to confusing compiler errors.
>
> If you had the libraries installed because you were using an official Arduboy, you can still program it without needing to reinstall them. Simply connect your official Arduboy and select the `Arduboy (Official)` board from the `Tools / dotMG` board list before uploading your sketch.

## Game Resources

### Homemade Games

If you want to learn to program your own games for dotMG using the Arduboy libraries, [here's a good place to start](https://community.arduboy.com/t/make-your-own-arduboy-game-part-2-printing-text). Some searches on Google or YouTube for "Arduboy programming tutorial" will also likely yield helpful results.

<a id="macros"></a> The dotMG board package defines the following macros automatically (usable with compiler directives like `#ifdef` or `#ifndef`):

- `DAB_DOTMG_PRO_MICRO`: If defined, signifies that the code will target the `dotMG (Pro Micro)` board (will be undefined if a different board was selected from `Tools`)

- `DAB_DOTMG_PRO_MICRO__NO_RGBLED`: If defined, signifies that `No RGB LED` was selected in the Arduino IDE `Tools` menu (will be undefined if `Has RGB LED` was selected)

### Pre-made Games

If you want to find pre-made games, here are some resources for game sketches:

- [Team ARG Museum](https://team-arg-museum.github.io)
- [Erwin's Arduboy Collection](https://arduboy.ried.cl)

> If you come across `.hex` files, they're likely compiled for the original Arduboy and are not natively compatible with dotMG. For best results, locate the game's source code, then upload using the steps given above.

## Extending dotMG

Ready to hack dotMG and have some real fun? You can use the built-in EXT header to add your own sensors, an [RGB LED](#rgb-led), or even a [flash chip](#flash-chip).

### Pin Initialization

If using the EXT pins for custom input/output in your code, be sure to initialize your pins **after** the Arduboy-specific pins are initialized (usually after `arduboy.begin()` is called). This is needed so that the Arduboy-specific pin initialization doesn't override any of your own initialization (especially true for the RGB LED pins).

### Pinouts

<p align="center">
    <a href="https://raw.githubusercontent.com/menehune23/arduboy-dotmg/main/docs/ext_pinout.png"><img src="ext_pinout.png" width="500px"></a>
    <br>
    (Click to enlarge)
</p>

<p align="center">
    <a href="https://raw.githubusercontent.com/menehune23/arduboy-dotmg/main/docs/cart_pinout.png"><img src="cart_pinout.png" width="500px"></a>
    <br>
    (Click to enlarge)
</p>

### Wiring Diagrams

- [System wiring diagram](/hardware/system/schematic.pdf)
- [Cartrige wiring diagram](/hardware/cart/schematic.pdf)

### RGB LED

Some Arduboy games (or games of your own making) make use of an RGB LED. If you want to add one to your dotMG, be sure to:

- Use a [**common anode** RGB LED](https://www.hackster.io/techmirtz/using-common-cathode-and-common-anode-rgb-led-with-arduino-7f3aa9) (or an equivalent configuration of individual LEDs)
- Use the pins noted in the above pinout
- Don't forget to add resistors!
- Select `Has RGB LED` from the Arduino IDE `Tools` menu before uploading your sketch

Wiring up an RGB LED is optional. If you choose to use those pins for something else instead, simply select `No RGB LED` from the Arduino IDE `Tools` menu. This will remove the LED-lighting code in the Arduboy library so that it doesn't attempt to use those pins during gameplay (see note on [pin initialization](#pin-initialization)).

> If you're not using the Arduboy library, you can still [check the RGB LED menu setting in code](#macros).

### Flash Chip

Flash chips can store hundreds of games at once. Adding a flash chip to dotMG is an advanced topic and is not fully documented here (but [here's a good start](https://community.arduboy.com/t/flash-cart-ridge)). In general, it involves:

- Wiring a flash chip using the above pinout
- Installing the Cathy3K bootloader onto your game cartridge
- Compiling games to `.hex` files and uploading them to the flash chip

If you choose not to use a flash chip, you can use the flash chip select pin (`FLASH CS` in the pinout) for something else, as the pin is only used by the Cathy3K bootloader and the `ArduboyFX` library.
