#chmod 755 01_select.sh
# ./01_select.sh
# print the second field of each input line
awk '{print $2,$1}' table.txt > table2.txt
#bread brown
#cake blue
#banana yellow

# ojo usar cuando no haya comas ni valores nulos
# manda las columnas seleccionadas a un nuevo archivo