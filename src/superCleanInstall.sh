#!/bin/bash
# This script installs cxWidgets, after doing
#  a 'make clean', removing all the .d files,
#  and clearing the ccache.

clear
echo "Doing a \"make clean\".."
make clean
echo "Removing all .d files.."
rm *.d
echo "Clearing the ccache.."
ccache -C
echo "Making cxWidgets.."
make && echo "Installing cxWidgets.." && sudo make install
