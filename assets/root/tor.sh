#!/bin/bash
for env in $(printenv | grep '^TOR_'); do
    name="$(cut -c5- <<< ${env%%=*})"
    val="\"${env##*=}\""
    [[ "$name" =~ _ ]] && continue
    [[ "$val" =~ ^\"([0-9]+|false|true)\"$ ]] && val="$(sed 's|"||g' <<< $val)"
    if grep -q "^$name" /etc/tor/torrc; then
        sed -i "/^$name/s| .*| $val|" /etc/tor/torrc
    else
        echo "$name $val" >>/etc/tor/torrc
    fi
done

LOCATION="$(cut -c10- <<< $(printenv | grep 'LOCATION'))"
printf "${LOCATION}"
if [ -n "$LOCATION" ]; then
    sed -i '/^StrictNodes/d; /^ExitNodes/d' /etc/tor/torrc
    echo "StrictNodes 1" >> /etc/tor/torrc
    echo "ExitNodes {$LOCATION}" >> /etc/tor/torrc
fi
