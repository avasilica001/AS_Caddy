#!/bin/sh
fecha=`date`

cd paginaweb

echo $fecha >> datos.txt

chmod 777 datos.txt
