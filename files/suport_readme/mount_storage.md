### Paso 1: Desmontar la partición si está montada

Si la partición está montada, primero desmonta:

```bash
sudo umount /dev/sdb1
```

### Paso 2: Borrar la tabla de particiones (opcional)

Si quieres borrar todo y crear una nueva tabla de particiones, puedes usar `gdisk` (para GPT) o `fdisk` (MBR).

con `fdisk`:

```bash
sudo fdisk /dev/sdb
```

Y luego:

- `g` para crear nueva tabla GPT (o `o` para MBR)
- `n` para crear nueva partición
- Acepta valores por defecto para usar todo el disco
- `w` para guardar y salir


### Paso 3: Crear nueva partición (si borraste la tabla)

Si borraste o no tiene particiones, crea una nueva partición, por ejemplo toda la unidad, con `fdisk` o `parted`.

Ejemplo con `fdisk`:

```bash
sudo fdisk /dev/sdb
```

- `n` para nueva partición
- Elegir la partición primaria (normalmente 1)
- Aceptar tamaño por defecto para usar todo el disco
- `w` para escribir cambios


### Paso 4: Formatear la partición

Luego, formatea la partición ya creada (ejemplo ext4):

```bash
sudo mkfs.ext4 /dev/sdb1
```

Si quieres otro sistema de archivos, por ejemplo NTFS para usar también en Windows:

```bash
sudo mkfs.ntfs -f /dev/sdb1
```

O para exFAT:

```bash
sudo mkfs.exfat /dev/sdb1
```


### 5. Crear punto de montaje
Primero crea una carpeta donde montarás esa partición, por ejemplo:

```bash
sudo mkdir /mnt/storage
```

Puedes cambiar `/mnt/storage` por cualquier ruta que prefieras.


### 6. Verificar UUID de la partición

Es recomendable montar la partición usando su UUID en lugar de /dev/sdb1 porque el nombre del dispositivo puede cambiar.

Ejecuta para obtener el UUID:

```bash
sudo blkid /dev/sdb1
```

Ejemplo de salida:

```
/dev/sdb1: UUID="1234abcd-56ef-7890-ab12-cdef34567890" TYPE="ext4" PARTUUID="..."
```

Copia el valor del UUID que viene entre comillas `UUID="..."`.

---

### 7. Editar el archivo fstab

Edita el archivo `/etc/fstab` para agregar la entrada que monte la partición al inicio.

```bash
sudo nano /etc/fstab
```

Agrega al final una línea como esta (adaptando el UUID y el sistema de archivos):

```
UUID=1234abcd-56ef-7890-ab12-cdef34567890  /mnt/storage  ext4  defaults  0  2
```

- Cambia el UUID por el que obtuviste.
- Cambia el sistema de archivos si es distinto (ejemplo: `ntfs`, `xfs`, `btrfs`, etc). Puedes verificar el tipo también con `blkid`.
- `defaults` es una opción típica para montar normal.
- El último número `2` indica que es una partición normal para chequeo de fs al inicio (1 sería para la raíz).

---

### 8. Probar el montaje

Para probar sin reiniciar:

```bash
sudo mount -a
```

Si no da error, debería montar la partición en `/mnt/storage`.

Puedes verificar con:

```bash
df -h | grep /mnt/storage
```


