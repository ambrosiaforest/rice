#!/bin/sh
eval $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh) &
export SSH_AUTH_SOCK &
nextcloud --background &

if command -v dbus-launch > /dev/null && test -z "${DBUS_SESSION_BUS_ADDRESS}" 
then 
 	eval $(dbus-launch --sh-syntax --exit-with-session)
fi

xss-lock -- slock &

feh --bg-fill ~/Pictures/wallpapers/forest.jpg &
picom &
bar &
gentoo-pipewire-launcher &

while :; do
    dwm >/dev/null 2>&1
done
