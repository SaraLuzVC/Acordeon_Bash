# chmod 755 11_buscarV.sh
# ./11_buscarV.sh

awk -F"," 'NR==FNR {a[$1] = $2; next} {print $1","$2","$3","$4"," a[$4]}' \
    file2.csv \
    file1.csv

# Explanation:
#-F"," Delimit by the comma character
#NR==FNR Read the first file argument (notice in the above solution that we're passing file2 first)
#{a[$1] = $2; next} In the current file, save the contents of Column2 in an array that uses Column1 as the key
#{print $1","$2","$3","$4"," a[$4]} Read file1 and using Column4, match the value to the key's value from the array. Print Column1, Column2, Column3, Column4, and the key's value.

