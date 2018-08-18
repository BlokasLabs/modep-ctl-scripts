#!/bin/sh

# Copyright (C) 2017-2018 Vilniaus Blokas UAB, https://blokas.io/pisound
# All rights reserved.
#
# This software may be modified and distributed under the terms
# of the BSD license.  See the LICENSE file for details.
#

. /usr/local/pisound/scripts/common/common.sh

echo Switching to $1...
python /usr/local/modep/modep-btn-scripts/modep-ctrl.py index $2

if [ $? -eq 0 ]; then
        flash_leds 1
        sleep 0.5
	flash_leds 1

	(while true; do sleep 100; done) &
	BG_PID=$!

	echo $BG_PID > /tmp/.modep-bg-pid

	wait_process $BG_PID
else
        flash_leds 50
fi
