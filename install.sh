#!/bin/bash

sudo bash -c "./00_config_pacman.sh && ./01_dependencies.sh && ./02_init_services.sh && ./03_config_fonts.sh && ./04_set_time_and_bluetooth.sh"

bash 05_load_configurations.sh
