#!/usr/bin/env python3
# coding=utf8
#
# Simple script to scale a KiCad footprint
# Usage:
# python3 kicad-resize-footprint.py <input.kicad_mod> <output.kicad_mod> <scale>
#
# Where scale is how much to scale (1 = 100%)
#
# Copyright (C) 2020, Uri Shaked.
#
# From: https://gist.github.com/urish/9c5b4aea6362da086541be14acdf0f72

import re
import sys

scale = float(sys.argv[3])

def scalexy(val):
    x = float(val.group(1)) * scale
    y = float(val.group(2)) * scale
    return '(xy {} {})'.format(x, y)

with open(sys.argv[1], 'r') as in_file, open(sys.argv[2], 'w', newline='') as out_file:
    for line in in_file:
        line = re.sub(r'\(xy ([0-9-.]+) ([0-9-.]+)\)', scalexy, line)
        out_file.write(line)
