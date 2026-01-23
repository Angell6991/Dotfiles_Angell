Para montar dispositivos andorid en linux

### 1 Instalar: para MTP

```bash
sudo pacman -S gvfs-mtp mtpfs
```

### 2: Usar `simple-mtpfs` para montar manualmente

El paquete `simple-mtpfs` es un reemplazo moderno para `mtpfs`/`jmtpfs`.

Instálalo con:

```bash
sudo pacman -S simple-mtpfs
```

Luego monta el dispositivo así:

1. Conecta el teléfono y ponlo en modo MTP

2. Crea un punto de montaje, si no tienes ya:

```bash
mkdir -p ~/android
```

3. Monta con:

```bash
simple-mtpfs ~/android
```

4. Cuando termines, desmonta con:

```bash
fusermount -u ~/android
```

