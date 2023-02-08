#!/bin/bash

db="caddy"
table="registro"

mysql -u root -e "CREATE DATABASE $db;"

mysql -u root -e "USE $db;CREATE TABLE $table (log varchar(100));"

file="/paginaweb/datos.txt"
while read -r line
do
	mysql -u root -e "USE $db;INSERT INTO $table (log) VALUES ('$line');"
done <$file


