# chmod 755 08_Filtrar.sh
# ./08_Filtrar.sh

# Por categoría
awk -F',' '$1=="mono" {print $0}' db.csv 

# Por valor
awk -F',' '$2>="4" {print $0}' db.csv 