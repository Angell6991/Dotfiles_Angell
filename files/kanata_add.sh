#!/usr/bin/env bash

set -e

echo "==> Configurando permisos para Kanata..."

# Crear grupos
sudo groupdel kanata 2>/dev/null || true
sudo groupadd --system uinput 2>/dev/null || true

# Agregar usuario a grupos
sudo usermod -aG input "$USER"
sudo usermod -aG uinput "$USER"

# Cargar módulo uinput
sudo modprobe uinput

# Hacer persistente el módulo
echo "uinput" | sudo tee /etc/modules-load.d/uinput.conf >/dev/null

# Crear regla udev
sudo tee /etc/udev/rules.d/99-input.rules >/dev/null <<'EOF'
KERNEL=="uinput", MODE="0660", GROUP="uinput", OPTIONS+="static_node=uinput"
EOF

# Recargar reglas
sudo udevadm control --reload-rules
sudo udevadm trigger

# Crear directorio systemd user
mkdir -p ~/.config/systemd/user

# Detectar rutas
KANATA_PATH="$(which kanata || true)"
SH_PATH="$(which sh)"

if [ -z "$KANATA_PATH" ]; then
    echo "ERROR: kanata no está instalado o no está en PATH"
    exit 1
fi

# Crear servicio systemd user
cat > ~/.config/systemd/user/kanata.service <<EOF
[Unit]
Description=Kanata keyboard remapper
Documentation=https://github.com/jtroo/kanata

[Service]
Environment=PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:$HOME/.cargo/bin
Type=simple
ExecStart=$SH_PATH -c 'exec $KANATA_PATH --cfg \$HOME/.config/kanata/config.kbd --no-wait'
Restart=on-failure
RestartSec=3

[Install]
WantedBy=default.target
EOF

# Recargar y habilitar servicio
systemctl --user daemon-reload
systemctl --user enable kanata.service

echo
echo "=========================================="
echo "Configuración completada."
echo
echo "IMPORTANTE:"
echo "1. Cierra sesión y vuelve a entrar."
echo "2. Luego inicia el servicio con:"
echo
echo "   systemctl --user start kanata.service"
echo
echo "3. Verifica estado con:"
echo
echo "   systemctl --user status kanata.service"
echo "=========================================="
