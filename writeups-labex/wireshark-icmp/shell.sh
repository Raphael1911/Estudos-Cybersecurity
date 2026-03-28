#!bin/bash
# Hardening? Configuring dumpcap to run without root privilages
# Author: Raphael

sudo groupadd wireshark

sudo chgrp wireshark /usr/bin/dumpcap

sudo chmod 750 /usr/bin/dumpcap

sudo setcap 'CAP_NET_RAW+eip CAP_NET_ADMIN+eip' /usr/bin/dumpcap

sudo usermod -a -G wireshark $USER

# Note: A system reboot or log out/log in is required for group changes.
