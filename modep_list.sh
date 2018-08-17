#!/bin/sh

# Copyright (C) 2017-2018 Vilniaus Blokas UAB, https://blokas.io/pisound
# All rights reserved.
#
# This software may be modified and distributed under the terms
# of the BSD license.  See the LICENSE file for details.
#

X=0
for i in $(python /usr/local/modep/modep-btn-scripts/modep-ctrl.py list); do
	echo $i/$X
	X=$((X+1))
done
