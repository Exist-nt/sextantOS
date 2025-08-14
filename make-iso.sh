#!/bin/bash

sudo rm -r ./work

echo "Building ISO"
sudo mkarchiso ./ \
-C ./pacman.conf \
-L SEXTANT \
-A SextantOS \
-w ./work \
-o ./out \
-v

sudo rm -r ./work

echo "ISO built!"