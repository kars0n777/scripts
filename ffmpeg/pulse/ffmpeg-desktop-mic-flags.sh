#!/bin/sh
ffmpeg \
-framerate 60 \
-f pulse \
-i alsa_output.pci-0000_08_00.4.analog-stereo.monitor \
-f pulse \
-i alsa_input.usb-FuZhou_Kingwayinfo_CO._LTD_TONOR_TC30_Audio_Device_20200707-00.mono-fallback \
-f pulse -i alsa_output.usb-Logitech_G935_Gaming_Headset-00.iec958-ac3-surround-51.monitor -filter_complex amix=inputs=3 \
-f x11grab \
-s 1920x1080 \
-i :0.0 -vcodec libx264 -acodec pcm_s16le ~/videos/ffmpeg/$(date --rfc-3339=seconds | sed -e 's/\ /-/g' | sed -e 's/\:/-/g').mkv
