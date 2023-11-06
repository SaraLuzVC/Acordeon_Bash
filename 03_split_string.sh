# chmod 755 03_split_string.sh
# ./03_split_string.sh

# Método para separar con una coma
awk 'BEGIN{FS = ",";OFS = ","}
{
    split($0,a, ":");
    print a[1],a[2];
}' db.csv
# En este caso toma la columna 5 y la separa con una coma
# FS = "," es para que tome como separador la coma
# OFS = "," es para que imprima con una coma
# split($0,a, ":") es para que tome tomo el renglon y lo separe con dos puntos
# print a[1],a[2] es para que imprima el primer y segundo elemento del arreglo a
# db.csv es el archivo de entrada
