#!/bin/bash

SRC="."
DEST="."
EXT='mp4'
#PRESET='iPhone & iPod Touch'

#for FILE in "`ls $SRC`"; do
for FILE in `find . -type f`; do
    FILE=$(basename "$FILE")
    filename=$(basename "$FILE")
    extension=${filename##*.}
    filename=${filename%.*}

#    HandBrakeCLI -i "$SRC"/$FILE -o "$DEST"/"$filename"."$EXT" "$PRESET"
    HandBrakeCLI -i "$SRC"/$FILE -o "$DEST"/"$filename"."$EXT"
done