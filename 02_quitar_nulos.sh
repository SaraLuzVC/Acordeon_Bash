# chmod 755 02_quitar_nulos.sh
# ./02_quitar_nulos.sh
# ./02_quitar_nulos.sh

# CUANDO ES TODO EL RENGLON
# Para eliminar registros completos nulos
# Primero se tiene que correr el archivo 00_Separar_con_espacios.sh

#awk NF db2.csv > db3.csv

# NF variable in awk holds the number of fields in the line. 
# So when the line is non empty, NF holds a positive value which trigger 
# the default awk action (print the whole line). 
# In case of empty line, NF is zero and the condition is not met, so awk does nothing.



# CUANDO ES UNA VARIABLE DEL RENGLON

# Para eliminar registros con una variable nula 
# En este caso todos los registros que no tengan nada en la columna 2
# Se debe de usar en un archivo con registros separados por comas

awk -F',' '$2>"  " {print $0}' db.csv > db3.csv

# -F',' es para que separe los campos por comas
# $2 es para que tome la columna 2
# >"  " es para que tome solo los registros que sí tengan algo en la columna 2
# {print $0} es para que imprima todo el renglón
# db.csv es el archivo de entrada
# db3.csv es el archivo de salida
