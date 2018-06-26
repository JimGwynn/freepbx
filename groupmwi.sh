#!/bin/sh
#
# Control script to change the status of a custom device state in Asterisk
# Called from Asterisk whenever a voicemail message is left
#
VM_CONTEXT=$1
EXTEN=$2
VM_COUNT=$3

ASTCMD="/usr/sbin/asterisk -rx"

logger -t groupmwi "Checking Group mailbox message"
$ASTCMD "originate Local/s@groupmwi-check extension 4@default"

exit 0
