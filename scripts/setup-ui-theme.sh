#!/bin/bash

echo "Configuring KDE Plasma defaults (Reactionary 98)..."

THEME_ID="org.kde.reactionary.desktop"


mkdir -p /etc/xdg
cat <<EOF > /etc/xdg/kdeglobals
[KDE]
lookandfeel=org.kde.reactionary.desktop
EOF


echo "Configuring SDDM Theme (Reactionary)..."
mkdir -p /etc/sddm.conf.d
cat <<EOF > /etc/sddm.conf.d/theme.conf
[Theme]
Current=reactionary
EOF

echo "KDE Plasma UI defaults staged."
