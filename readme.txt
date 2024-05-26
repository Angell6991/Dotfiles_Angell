Descargar la fuente:
fonts nerds--inconsolata italic
CrackMan


Ruta del archivo de configuracion
starship.toml : ~/.config/  # una vez puesto el archivo en la ruta, ir a la paguina de starship para consultar la instalacion  via curl


Instalacion del picom blur y redondeo de bordes:
instalar por yay

yay -S picom-tryone-git

poner la carpeta de picom en la ruta : ~/.config/ 

Y ejecutar el comando:
pkill picom 
picom --experimental-backends -b


Para los documentos .sh, hacerlos ejecutables con:
chmod u+x name_file.sh

Cualquier ejecutable se corre desde terminal con:
./name_file
