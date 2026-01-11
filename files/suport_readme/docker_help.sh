#iniciar sevicios con systemd
sudo systemctl start docker.service                   
sudo systemctl enable docker.service

#consultar estado del servicio
sudo systemctl status docker.service

#hacer que docker se pueda usar sin sudo
sudo usermod -aG docker $USER

#consulta contenedores, names y ID
docker ps -a

#iniciar de forma interactiva el contenedor con el CONTAINER ID
docker start -ai 17cfb95eed00

#copiar un archivo del host al container
docker cp ~/Projects/Metric_3 17cfb95eed00:/root

#copiar un archivo del container al host
docker cp 17cfb95eed00:/root/python/Metric_3/build/apk/app-release.apk ~/Projects/

#eliminar un container con el CONTAINER ID
docker rm -f d3fa4351a0ed

#################################################

#instalar dependencias
sudo pacman -S python-virtualenv

#iniciar el entorno virtual
python -m venv nombre_del_entorno

#activar el entorno
source nombre_del_entorno/bin/activate

#desactivar el entorno
deactivate


