#!/bin/bash

SQUID_FILE=$(cat squid.conf)
ALLOWED_IPS_FILE=$(cat allowed_ips.txt)
USERNAME=$1
HOST=$2
PASSWORD=$3


sshpass -p $PASSWORD ssh $USERNAME@$HOST 'bash -s' << EOF
	reboot
EOF