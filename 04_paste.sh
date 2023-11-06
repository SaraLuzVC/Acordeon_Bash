# chmod 755 04_paste.sh
# ./04_paste.sh

awk '{new_var=$1$2; print $0,new_var}' db2.csv

# OJO se debe de separar por espacios antes de correr
# toma la columna 1 y la columna 2 y las concatena
# $0 es para que imprima todo el renglón
# new_var es una variable nueva que se crea
# db2.csv es el archivo de entrada
