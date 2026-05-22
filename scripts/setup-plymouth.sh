#!/bin/bash
set -ouex pipefail

THEME_NAME="icarus-retro"
THEME_DIR="/usr/share/plymouth/themes/$THEME_NAME"

echo "Installing Icarus Plymouth Theme..."

# Ordner erstellen und Theme kopieren
mkdir -p "$THEME_DIR"
cp -r /usr/share/icarus/plymouth/* "$THEME_DIR/"

if [ -f "$THEME_DIR/startup.wav" ]; then
    echo "Found startup.wav, ensuring it is in the theme directory."
fi

# Plymouth Theme setzen (sichere Methode für Container-Builds)
mkdir -p /etc/plymouth/
echo -e "[Daemon]\nTheme=$THEME_NAME" > /etc/plymouth/plymouthd.conf

echo "Plymouth theme $THEME_NAME applied."
