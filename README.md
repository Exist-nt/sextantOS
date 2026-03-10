# sextantOS

SextantOS is a custom Arch Linux operating system centered around keyboard navigation.
To get this operating system yourself, you can either download the ISO in the release page or follow the below steps to build the ISO yourself.

# Building Sextant
**Clone the Git repository:**

`git clone https://github.com/Exist-nt/sextantOS.git`

**Build the ISO:**

`sudo mkarchiso -r -v ./sextantOS`


After making/downloading the ISO, you can then burn it to a USB to try the live environment and install it to your system:

`sudo dd if=./out/sextantos-*-x86_64.iso of=/dev/sdX status=progress && sync`

You can then enter the live environment by rebooting your computer and selecting your USB as the boot option.
