# chmod 755 B_sin_header.sh
# ./B_sin_header.sh

awk 'NR>1 {print $1 | "sort -r -k3 -n"}' db.csv

