# chmod 755 05_id.sh
#  ./05_id.sh

awk 'BEGIN{
    iterator = 0;
}
{
    iterator++;
    printf iterator "," $0 "\n"
}' ./db.csv

# coloca el numero de renglon y el renglon
# printf iterator " " $0 "\n" imprime el numero de renglon y el renglon
