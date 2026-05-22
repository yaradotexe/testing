#!/bin/bash
set -ouex pipefail
chmod +x /tmp/scripts/*.sh || true

echo "Cleaning up Bazzite default packages..."

REMOVE_PKGS=(
    "bazzite-portal"
    "steam"
    "steam-devices"
    "lutris"
    "heroic-games-launcher-bin"
)

for pkg in "${REMOVE_PKGS[@]}"; do
    if rpm -q "$pkg" &> /dev/null; then
        rpm-ostree override remove "$pkg"
    fi
done


systemctl enable icarus-user-rename.service

mkdir -p /etc/xdg
cat <<EOF > /etc/xdg/ksplashrc
[KSplash]
Theme=None
Engine=None
EOF

echo "System cleanup and optimizations complete."
