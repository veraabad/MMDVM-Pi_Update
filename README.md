# MMDVM-Pi_Update

This repo contains a bash script in order to flash firmware into the ZUM Radio MMDVM-Pi v1.0. Script only works on a Raspberry Pi.

The script works by loading a bin file with the name mmdvm_f7. Therefore it can be used to load the bin file in this repo or you could use a bin file that you built.

The mmdvm_f7.bin on here was built using the MMDVM repo from G4KLX https://github.com/g4klx/MMDVM. The default flags were used pluse these:
	#define MODE_LEDS
	#define SERIAL_REPEATER