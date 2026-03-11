# SextantOS

<p align=center>
  <img src="https://existnt.net/Images/sextant-promo.png" alt="Promo image" width=600 />
</p>

SextantOS is an Arch-based Linux distribution built around keyboard navigation and a minimal aesthetic. It uses the **sway** window manager and many TUI-based applications to make it as lightweight and fast as possible, with preconfigured settings to ensure consistent and good-looking theming.

There are two main ways of getting Sextant: **building with ArchISO** or **downloading a released ISO**.

<p align=center>
  <img src="https://raw.githubusercontent.com/Exist-nt/sextantOS/master/images/sextant-promo.png" alt="Promo image 2" width=600 />
</p>

# Building SextantOS

To build the most up-to-date version of Sextant, you must be using an Arch Linux machine with the `archiso` package installed. Once this is installed, use the following commands to build the ISO yourself:
```
git clone https://github.com/Exist-nt/sextantOS.git
sudo mkarchiso -r -v ./sextantOS 
```

The built ISO will then be stored in the `./out` directory.

# Downloading SextantOS

To download a stable release of Sextant, go to the Releases tab of this repository and download the ISO there.

# Burning SextantOS to a USB

If you are on any system other than Linux, install `balena-etcher` or any comparable program to burn the ISO to a USB.

On Linux, you can either use `balena-etcher` for a graphical interface or the `dd` command to burn the image.

First, navigate to the directory containing the ISO (`Downloads` or `out`), then run the following command:
```
sudo dd if=sextantos-XXXX.XX.XX-x86_64.iso of=/dev/sdX status=progress && sync
```
You'll need to specify the date in the ISO's filename, and the letter of the USB drive which you want the ISO to be burned to (use `lsblk` to list the available devices and their drive letter)
