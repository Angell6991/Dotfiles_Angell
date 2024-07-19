#!/bin/bash

sudo pacman -S bluez-obex bluez bluez-utils blueman

sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service
sudo systemctl status bluetooth.service


