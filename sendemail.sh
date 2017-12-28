#!/bin/bash
FROM=will_shown_in_from_field
MAILTO=destination_address@example.com
NAME=$1
BODY=$2
SMTPSERVER="smtp.gmail.com:587"
LOGIN=login_of_mailbox_which_send_our_report@example.com
PASS=pass_to_this_mailbox

/usr/bin/sendEmail -f $FROM -t $MAILTO -o message-charset=utf-8 -u $NAME -m $BODY -s $SMTPSERVER -o tls=yes -xu $LOGIN -xp $PASS
