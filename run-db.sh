#!/bin/bash

# La siguiente ruta ya DEBE existir en tu máquina:
RUTA=/Users/garellano/xyz

mkdir $RUTA/db
mkdir $RUTA/scripts

echo "Deteniendo posibles previas instancias del mysql"
docker stop db
docker rm db
echo "Previas instancias detenidas"

echo "Arrancando el motor de mysql"
docker run -d \
--name db \
--restart unless-stopped \
-p 3306:3306 \
-v $RUTA/db:/var/lib/mysql \
-v $RUTA/scripts:/scripts \
-e MYSQL_ROOT_PASSWORD=hola \
-e TZ=Mexico/Mexico_City \
mariadb

echo "Servidor de base de datos mysql operacional"
echo "To see what a nice thing we just have made, just run this:"
echo "docker exec -it db bash"
echo "mariadb -u root -phola"
