echo "2a"
var=$(awk -F "," '/,2012,/{a[$1]+=$10}END{for(i in a) print a[i],i}' WA_Sales_Products_2012-14.csv | sort -rn | awk 'NR==1 {print $2,$3}')
echo "$var"
echo "2b"
varb=$(awk -v country="$var" 'BEGIN {FS = ",";OFS=FS} $0 ~ country {iter[$4]+=$10} END{for(hasil in iter){print hasil,iter[hasil]}}' WA_Sales_Products_2012-14.csv | sort -nrk2 -t, | head -3 | awk 'BEGIN{FS=","} {print $1}')
echo "$varb"

echo "2c"
echo "==Personal Accessories=="
awk -F ',' '{if($4=="Personal Accessories") iter[$6]+=$10} END {for(hasil in iter) {print iter[hasil],hasil}}' WA_Sales_Products_2012-14.csv  | sort -nr | awk 'NR<=3 {print $2,$3,$4}'

echo "==Outdoor Protection=="
awk -F ',' '{if($4=="Outdoor Protection") iter[$6]+=$10} END {for(hasil in iter) {print iter[hasil],hasil}}' WA_Sales_Products_2012-14.csv  | sort -nr | awk 'NR<=3 {print $2,$3,$4}'

echo "==Mountaineering Equipment=="
awk -F ',' '{if($4=="Mountaineering Equipment") iter[$6]+=$10} END {for(hasil in iter) {print iter[hasil],hasil}}' WA_Sales_Products_2012-14.csv  | sort -nr | awk 'NR<=3 {print $2,$3,$4}'
