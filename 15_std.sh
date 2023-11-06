# chmod 755 15_std.sh
# ./15_std.sh

awk -F',' 'BEGIN{
	x1=0;
    x2=0;
}
{
#    print $2;
	x1=x1+$2;
}
END{
	prom=x1/NR;
    x2=x2+($2-prom)^2;
    print "Desviacion estandar: ", sqrt(x2/NR);
}' db.csv