# chmod 755 12_nulos_mmm.sh
# ./12_nulos_mmm.sh

#awk 'BEGIN{FS = ",";OFS = ","}
awk 'BEGIN{FS=",";OFS=","}
    {
      for(i=1;i<=(NF-1);i++)
      {
        if($i == ""){
         $i="NULL"
        }
      }
      print
    }' db.csv