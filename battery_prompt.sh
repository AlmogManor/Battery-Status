#!/bin/sh

battery_level=$(cat /sys/class/power_supply/BAT0/capacity)
charging_status=$(cat /sys/class/power_supply/BAT0/status)

if [ "$charging_status" = "Charging" ]; then
    if [ "$battery_level" -gt "90" ]; then
	echo -n "󰂅 "
    elif [ "$battery_level" -gt "80" ]; then
	echo -n "󰂊 "
    elif [ "$battery_level" -gt "70" ]; then
	echo -n "󰢞 "
    elif [ "$battery_level" -gt "60" ]; then
	echo -n "󰂉 "
    elif [ "$battery_level" -gt "50" ]; then
	echo -n "󰢝 "
    elif [ "$battery_level" -gt "40" ]; then
	echo -n "󰂈 "
    elif [ "$battery_level" -gt "30" ]; then
	echo -n "󰂇 "
    elif [ "$battery_level" -gt "20" ]; then
	echo -n "󰂆 "
    elif [ "$battery_level" -gt "10" ]; then
	echo -n "󰢜 "
    fi
else
    if [ "$battery_level" -gt "90" ]; then
	echo -n "󰁹 "
    elif [ "$battery_level" -gt "80" ]; then
	echo -n "󰂁 "
    elif [ "$battery_level" -gt "70" ]; then
	echo -n "󰂀 "
    elif [ "$battery_level" -gt "60" ]; then
	echo -n "󰁿 "
    elif [ "$battery_level" -gt "50" ]; then
	echo -n "󰁾 "
    elif [ "$battery_level" -gt "40" ]; then
	echo -n "󰁽 "
    elif [ "$battery_level" -gt "30" ]; then
	echo -n "󰁼 "
    elif [ "$battery_level" -gt "20" ]; then
	echo -n "󰁻 "
    elif [ "$battery_level" -gt "10" ]; then
	echo -n "󰁺 "
    fi
fi
