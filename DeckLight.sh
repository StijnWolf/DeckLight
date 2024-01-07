#!/bin/bash

moonlight_config_file='/home/deck/.var/app/com.moonlight_stream.Moonlight/config/Moonlight Game Streaming Project/Moonlight.conf'

current_resolution=$(xrandr -q | grep -E -o 'primary [[:digit:]]+x[[:digit:]]+' | grep -E -o '[[:digit:]]+');
if [[ -z "$current_resolution" ]]; then
    current_resolution=$(xrandr -q | grep -E -o 'current [[:digit:]]+ x [[:digit:]]+' | grep -E -o '[[:digit:]]+');
fi

current_resolution_width=$(echo $current_resolution | grep -E -o '^[[:digit:]]+');
current_resolution_height=$(echo $current_resolution | grep -E -o '[[:digit:]]+$');

sed -i "s/width=[[:digit:]]*/width=$current_resolution_width/" "$moonlight_config_file";
sed -i "s/height=[[:digit:]]*/height=$current_resolution_height/" "$moonlight_config_file";

/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=moonlight com.moonlight_stream.Moonlight
