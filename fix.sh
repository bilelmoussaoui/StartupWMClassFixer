#!/bin/bash

# Author : Bilal Elmoussaoui, Andreas Angerer
# Version : 0.1 beta
# Licence : The script is released under GPL

applications_location=("/usr/share/applications/"
									"/usr/local/share/applications/"
									"/usr/local/share/applications/kde4"
									"/home/${SUDO_USER:-$USER}/.local/share/applications/"
									"/home/${SUDO_USER:-$USER}/.local/share/applications/kde4/"
									$(xdg-user-dir DESKTOP))
IFS=,

#The script needs root privileges
if [ "$(id -u)" != "0" ]; then
  echo "You need to have root privileges to run the script."
  echo "Please try again,this time using 'sudo'. Exiting."
  exit 1
fi

if [ ! -f "database.csv" ]; then
	echo "Please download the database file first! Exiting."
	exit 1
fi

{
  read;
  while read -r name launcher startupwmclass; do
      for app_location in "${applications_location[@]}"
      do
        desktop_file="$app_location$launcher.desktop"
        if [ -f "$desktop_file" ]; then
          if ! grep -Gq "StartupWMClass\s*=\s*$startupwmclass$" "$desktop_file"; then
            echo "StartupWMClass = $startupwmclass" >> "$desktop_file"
            echo "Fixed : $name"
          fi
        fi
      done
  done
}< "database.csv"
