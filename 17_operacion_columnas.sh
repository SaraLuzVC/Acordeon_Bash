# chmod 755 17_operacion_columnas.sh
# ./17_operacion_columnas.sh

awk 'BEGIN{FS = ",";OFS = ","}
{ print $0 "," $2+$4; }' db.csv