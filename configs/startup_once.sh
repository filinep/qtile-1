#!/bin/sh

if [[ -d "${HOME}/.fonts" ]]; then
    for d in ${HOME}/.fonts/*; do echo $d; xset fp+ ${d}; done;
    xset fp rehash
fi

/usr/lib/notification-daemon/notification-daemon &
${HOME}/bin/qtile/agent.py &
xsetroot -solid '#939393' &
xscreensaver -nosplash &
dropbox start &
pidgin &

# vim: tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab
