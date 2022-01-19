#!/bin/bash

CRITICAL=10
BAT="/sys/class/power_supply/BAT0"

now=`cat "${BAT}/charge_now"`
full=`cat "${BAT}/charge_full"`
level=`echo "${now} / (${full} * 0.01)" | bc`
curr_status=`cat ${BAT}/status`

if [[ ${level} -lt ${CRITICAL} ]]; then
    if [[ ${curr_status} != 'Charging' ]]; then
        notify-send -u critical \
            'Critical battery level!' \
            "\nPlug-in your charger!"
    fi
fi
