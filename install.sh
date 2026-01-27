#!/bin/bash

sudo bash 00_config_pacman.sh && bash 01_dependencies.sh && bash 02_init_services.sh && bash 03_config_fonts.sh && bash 04_set_time_and_bluetooth.sh

bash 06_init_notify.sh
bash 05_load_configurations.sh
