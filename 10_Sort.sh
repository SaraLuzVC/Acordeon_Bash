# chmod 755 10_Sort.sh
# ./10_Sort.sh

awk -F, '{ print $2, $0 }' db.csv | sort 

# ordena por el primer campo, pero imprime todo el registro