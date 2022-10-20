#!/bin/sh

export WAYLAND_DISPLAY=wayland-1
export XDG_RUNTIME_DIR=/run/user/0
export WESTON_CONFIG_FILE=/etc/xdg/weston/weston.ini

export MESA_DEBUG=1
export EGL_LOG_LEVEL=debug
# export LIBGL_DEBUG=verbose
# export WAYLAND_DEBUG=1

export ELECTRON_ENABLE_LOGGING=true
export ELECTRON_DEBUG_NOTIFICATIONS=true
export ELECTRON_ENABLE_STACK_DUMPING=true

mkdir -p /home
adduser ivan -D -h /home/ivan
chown ivan:ivan /home/ivan
mkdir /tmp && chmod 0777 /tmp
chmod 666 /dev/null
chown -R ivan:ivan /run/user/0
chmod -R 0755 /run/user/0
echo "12345678901264758695847364857456" > /etc/machine-id
chmod 666 /dev/dri/card0
chmod 666 /dev/dri/renderD128


# /nix/store//bin/electron --enable-features=UseOzonePlatform --ozone-platform=wayland --no-sandbox --ignore-gpu-blacklist

# dbus-launch element-desktop  --enable-features=UseOzonePlatform --ozone-platform=wayland --ignore-gpu-blacklist