#!/bin/sh

# Copyright (C) 2017-2018 Vilniaus Blokas UAB, https://blokas.io/pisound
# All rights reserved.
#
# This software may be modified and distributed under the terms
# of the BSD license.  See the LICENSE file for details.
#

DIR=$(dirname "$1")

echo name: $(grep -rHn "doap:name" $DIR | egrep -o "\".*\"" | sed 's/^.\(.*\).$/\1/')
echo entry: $DIR
echo author: \" \"
echo image: $DIR/screenshot.png
echo args: $(basename "$1")
echo midi_keyboard: Y
