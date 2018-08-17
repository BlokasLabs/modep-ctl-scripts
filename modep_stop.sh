#!/bin/sh

# Copyright (C) 2017-2018 Vilniaus Blokas UAB, https://blokas.io/pisound
# All rights reserved.
#
# This software may be modified and distributed under the terms
# of the BSD license.  See the LICENSE file for details.
#

kill $(cat /tmp/.modep-bg-pid)
rm /tmp/.modep-bg-pid
python /usr/local/modep/modep-btn-scripts/modep-ctrl.py bypass
