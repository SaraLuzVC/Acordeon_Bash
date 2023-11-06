# chmod 755 16_Maximo_minimo.sh
# awk -f 16_Maximo_minimo.sh db.csv

BEGIN{FS = ","}
{
variable[$2]++;
}
END{
for (count in variable)
{
 #   print "Variable:", count, "Valor:", variable[count];
	if ( max < count ) {
		max = count;
		maximo = max;
	}
	if ( min > count ) {
		min = count;
		minimo = min;
	}
}
print "Máximo:", maximo;
print "Mínimo:", minimo;
}