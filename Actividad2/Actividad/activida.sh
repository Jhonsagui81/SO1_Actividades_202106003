#!/bin/bash

if [ -z "$GITHUB_USER" ]; then
    GITHUB_USER="Jhonsagui81"
    echo "Seteado por defecto"
fi 

link="https://api.github.com/users/$GITHUB_USER"

#Obtener el json
respuesta=$(curl -s "$link")

#obtener data
user=$(echo "$respuesta" | jq '.login')
id=$(echo "$respuesta" | jq '.id')
created=$(echo "$respuesta" | jq '.created_at')

#Fecha actual
fecha_actual=$(date +%Y-%m-%d)

#Crea carpeta del log
mkdir -p ./tmp/"$fecha_actual"

echo "Hola $user. User ID: $id. Cuenta fue creada el: $created." >> ./tmp/"$fecha_actual"/Saludos.log

#watch -n 300 "./activida.sh"