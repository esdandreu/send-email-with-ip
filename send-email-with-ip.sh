#!/bin/bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
source $SCRIPT_DIR/.env
PUBLICIP="`wget -qO- https://ipecho.net/plain`"
sendemail -l email.log     \
    -f $EMAIL \
    -u "What is my IP" \
    -t $TO \
    -s "smtp.gmail.com:587" \
    -m "Public IP: $PUBLICIP\n https://my.noip.com/dynamic-dns" \
    -xu $EMAIL \
    -xp $PASSWORD
