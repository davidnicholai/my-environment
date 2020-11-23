#!/bin/bash

# To set this up, search for "Startup Applications" in GNOME then add this script.
if command -v synclient &> /dev/null
then
	synclient AreaLeftEdge=100
	synclient AreaRightEdge=1130
fi

