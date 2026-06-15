#!/bin/bash

pkill waybar
pkill swaync
pkill nautilus
nautilus -q

waybar &
swaync &
