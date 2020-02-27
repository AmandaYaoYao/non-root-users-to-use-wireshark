#!/bin/bash

sudo apt-get -y install wireshark

# config wireshark: allow non-root users to use wireshark
sudo groupadd wireshark
sudo chgrp wireshark /usr/bin/dumpcap
sudo chmod 4755 /usr/bin/dumpcap
sudo gpasswd -a $USER wireshark

