source .env
echo $EMAIL
$PUBLICIP=`wget -qO- https://ipecho.net/plain`
echo $PUBLICIP
sendemail -l email.log     \
    -f $EMAIL \
    -u "What is my IP" \
    -t $TO \
    -s "smtp.gmail.com:587" \
    -m "Public IP: $PUBLICIP\n" \
    -xu $EMAIL \
    -xp $PASSWORD