#chmod 755 00_Separar_con_espacios.sh
# ./00_Separar_con_espacios.sh
awk '{gsub(/,/, " ")} 1' db.csv > db2.csv
# lo que está ente // es lo que se va a reemplazar
# lo que está entre "" es por lo que se va a reemplazar
# el 1 es para que imprima todo
# gsub es para que reemplace todas las coincidencias
# si se pone sub solo reemplaza la primera coincidencia
# lo manda a un archivo nuevo db2.csv