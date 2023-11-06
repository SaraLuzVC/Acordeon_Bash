# chmod 755 09_contar_categoricos.sh
# ./09_contar_categoricos.sh

# The most common way to change the default field separator is to use the -F command line option.
# You can also directly set the special FS variable to change the input field separator. 
# This can be done from the command line using -v option or within the code blocks.

awk -F',' '{            
Variable[$1]++;
}
END{
for (i in Variable)
print i, " ", Variable[i]," "
}
' db.csv

# En la línea 8 se crea un arreglo llamado Variable, con el primer campo de cada renglón ($1)
# En la línea 11 se imprimen los valores del arreglo Variable