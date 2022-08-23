#!/bin/bash

sudo apt-get install -y tmux htop uuid-runtime gpsd gpsd-clients jq python3-smbus python3-dev i2c-tools
sudo pip3 install adafruit-circuitpython-ssd1306
sudo pip3 install adafruit-circuitpython-framebuf
sudo pip3 install adafruit-circuitpython-rfm9x
sudo pip3 install adafruit-circuitpython-gps
sudo pip3 install pycryptodome
sudo pip3 install shortuuid
sudo pip3 install python-dotenv
wget https://github.com/adafruit/Adafruit_CircuitPython_framebuf/raw/main/examples/font5x8.bin
wget https://github.com/DGaffney/LoRaWAN.git