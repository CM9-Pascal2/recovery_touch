#!/sbin/sh
mkdir -p /sd-ext
rm /cache/recovery/command
rm /cache/update.zip
touch /tmp/.ignorebootmessage
kill $(ps | grep /sbin/adbd)
kill $(ps | grep /sbin/recovery)

# On the pascal2 the recovery comes test signed, but the
# recovery is not automatically restarted.
if [ -f /init.rk29board.rc ]
then
    /sbin/recovery &
fi


