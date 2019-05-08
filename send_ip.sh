#!/bin/bash
### BEGIN INIT INFO
# Provides:          send_ip.sh
# Required-Start:    $all
# Required-Stop:
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Sends ip to telegram
# Description:       A simple script that send your private ip to telegram
### END INIT INFO
TOKEN='< TOKEN >'
CHAT_ID='< CHAT_ID >'
MESSAGE=$(hostname -I | awk '{print $1}')
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$MESSAGE"
