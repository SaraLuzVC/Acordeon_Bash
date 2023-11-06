# chmod 755 13_promedio.sh
# ./13_promedio.sh

awk -F',' 'BEGIN{
	x1=0;
}
{
#    print $2;
	x1=x1+$2;
}
END{
	print "Promedio: "x1/NR;
}' db.csv

