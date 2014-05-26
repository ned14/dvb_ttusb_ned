This is just enough of the Linux Technotrend S-2400 kernel
driver to spot a S-2400 which has forgotten its hardwired
USB VID PID and is instead showing the VID PID of its
Cypress FX2 USB host chip. Upon spotting the generic FX2
USB chip, it loads the S-2400 firmware, and upon device
restart the normal Linux kernel driver gets picked up.

If you've had to stop using your TT S-2400 or equivalent
DVB-S tuner for the same reason, herein lies your salvation.

Tested on Debian.

