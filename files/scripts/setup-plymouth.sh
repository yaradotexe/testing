#!/bin/bash
THEME_NAME="icarus-retro"
THEME_DIR="/usr/share/plymouth/themes/$THEME_NAME"

echo "Installing Icarus Plymouth Theme..."

mkdir -p "$THEME_DIR"

cp -r /usr/share/icarus/plymouth/* "$THEME_DIR/"

if [ -f "$THEME_DIR/startup.wav" ]; then
    echo "Found startup.wav, ensuring it is in the theme directory."
fi

plymouth-set-default-theme "$THEME_NAME"

echo "Plymouth theme $THEME_NAME applied."
