# Ordering dotMG PCBs

The board design files in this repo are optimized for [JLC PCB](jlcpcb.com). Gerber files can be found in this repo under [`hardware`](/hardware) sub-directories. Compress the desired versioned sub-directory to a ZIP file to upload to JLC PCB.

The system PCB comes with three parts, connected by breakaway tabs: the main board and two shell boards (front and back). You can also [laser-cut your own shell](custom-shell.md).

Below are the recommended settings for the JLC PCB order page:

## Cart

- **Base material:** FR-4
- **Layers:** 2
- **Thickness:** 1.0mm (required to fit in connector slot)
- **Finish:** ENIG-RoHS
- **Outer copper weight:** 1oz
- **Gold fingers:** Yes (chamfered if possible, though as of this writing, JLC PCB stopped allowing chamfering on a board this small)
- **Remove order number:** Specify a location (board design contains the required `JLCJLCJLCJLC` text element)

## System

- **Base material:** FR-4
- **Layers:** 2
- **Different design:** 3 (this will also set the delivery format to "panel by customer")
- **Thickness:** 1.2mm
- **Finish:** ENIG-RoHS
- **Outer copper weight:** 1oz
- **Gold fingers:** No
- **Remove order number:** Specify a location (board design contains the required `JLCJLCJLCJLC` text element)


> In a pinch, a lead-free HASL finish can be chosen to save money. For the system, it looks better with ENIG (gold color). For the cart, ENIG is required if gold fingers are selected.
