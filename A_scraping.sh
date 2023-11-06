# chmod 755 A_scraping.sh
#  ./A_scraping.sh

for i in 01 02 03; do
  url="https://ecobici.cdmx.gob.mx/wp-content/uploads/2023/10/ecobici_2023_$i.csv"
  output="ecobici_2023_$i.csv"
  wget "$url" -O "$output"
done
