#!/bin/sh

export WAYLAND_DISPLAY=wayland-1 XDG_RUNTIME_DIR=/run/user/0 WESTON_CONFIG_FILE=/etc/xdg/weston/weston.ini

mkdir -p /home
adduser ivan -D -h /home/ivan
chown ivan:ivan /home/ivan
mkdir /tmp && chmod 0777 /tmp
chmod 666 /dev/null
chown ivan:ivan /run/user/0
chmod -R 0755 /run/user/0
echo "12345678901264758695847364857456" > /etc/machine-id

