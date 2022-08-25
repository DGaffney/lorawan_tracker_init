#!/bin/bash
/bin/bash /home/pi/lorawan_tracker_init/setup.sh
cd /home/pi/LoRaWAN && /usr/bin/python3 run.py > /home/pi/out.log