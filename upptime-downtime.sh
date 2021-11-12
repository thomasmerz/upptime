#!/bin/bash
# Script to easily create maintenance window issue for Upptime.
# Author: modem7 - https://github.com/modem7
# Downloaded from https://rextester.com/OOJK1310 on Tue, 14 Sep. 2021
# and edited for my needs

##################################
###### Change these values #######
##################################
# Edit Timezone if required
export TZ=Europe/Berlin

# Enter how long your maintenance window is for
mainthour="07" # 0 value allowed
maintmin="00" # 0 value allowed

# Enter services to be down (make sure to keep the quotes, and comma separate the values)
expecteddown="Syncthing-HEL"

# Nextcloud
# Pihole-NBG
# Portainer-NBG
# Syncthing-NBG
## Wireguard-NBG
## MCServer_si

# Pihole-HEL
# Portainer-HEL
# Syncthing-HEL
## Wireguard-HEL
## MCServer_jo

# Syncthing-contabo-mo

# Pihole-KA
# Syncthing-KA-TM
# Syncthing-KA-BI
# Portainer-KA
# OpenVPN-KA
## Wireguard-KA

##################################
# Start time variable. Don't change.
    starttime=$(date +"%Y-%m-%dT%H:%M:%S%z")

# Maintenance window variables. Don't change.
    maintwindow="${mainthour} hours ${maintmin} minutes"

    endtime=$(date -d "${maintwindow} hence" +"%Y-%m-%dT%H:%M:%S%z")
##################################

# Output required fields for maintenance issue.
echo "#################### Copy values below ####################"
echo "Maintenance for $expecteddown"
echo "Lasting from $starttime to $endtime"
echo
echo "<!--"
echo "start: $starttime"
echo "end: $endtime"
echo "expectedDown: $expecteddown"
echo "-->"
echo "#################### Copy values above ####################"
