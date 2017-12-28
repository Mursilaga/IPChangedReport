#!/bin/bash
OLDIP=$(</full_path_to/ip)
CURRENTIP=$(/usr/bin/curl icanhazip.com)
if [ "$OLDIP" != "$CURRENTIP" ]
then
/full_path_to/sendemail.sh REPORT $CURRENTIP
echo $CURRENTIP > /full_path_to/ip
fi
