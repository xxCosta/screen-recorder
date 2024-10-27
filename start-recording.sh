#!/bin/bash

d=$(date '+%Y-%m-%d')
name=""

echo "are mans bout naming? or is it a default ting"

read -p "(leave blank if to use default name): " choice
echo $choice
case $choice in
    "")
        name=$d
        ;;
    *)
        name=$REPLY
        ;;
esac 

ffmpeg -f x11grab -framerate 60  -i :0.0 ~/coding/screen-record/recordings/$name.mkv



