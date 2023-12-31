#!/bin/sh
 
if [ "$1" = "" ]; then
  COMMAND="/usr/sbin/asterisk -T -W -U asterisk -p -nvvvdddf"
else
  COMMAND="$@"
fi

chown -R asterisk: /etc/certs
chmod 775 -R /etc/certs
chown -R asterisk:  /var/log/asterisk \
                    /var/lib/asterisk \
                    /var/run/asterisk \
                    /var/spool/asterisk
exec ${COMMAND}