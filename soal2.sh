echo "2a"
var=$(awk -F "," '/,2012,/{a[$1]+=$10}END{for(i in a) print a[i],i}' WA_Sales_Products_2012-14.csv | sort -rn | awk 'NR==1 {print $2,$3}')
echo "$var"
echo "2b"
awk -F "," '/,2012,/||/United States,/{a[$4]+=$10}END{for(i in a) print a[i],i}' WA_Sales_Products_2012-14.csv | sort -rn | awk 'NR<=3 {print $2,$3}'

echo "2c"
#echo "==Personal Accessories=="
#awk -F ',' '{if($4=="Personal Accessories") iter[$6]+=$10} END {for(hasil in iter) {print iter[hasil],hasil}}' WA_Sales_Products_2012-14.csv  | sort -nr | awk 'NR<=3 {print $2,$3,$4}'

#echo "==Outdoor Protection=="
#awk -F ',' '{if($4=="Outdoor Protection") iter[$6]+=$10} END {for(hasil in iter) {print iter[hasil],hasil}}' WA_Sales_Products_2012-14.csv  | sort -nr | awk 'NR<=3 {print $2,$3,$4}'

#echo "==Mountaineering Equipment=="
#awk -F ',' '{if($4=="Mountaineering Equipment") iter[$6]+=$10} END {for(hasil in iter) {print iter[hasil],hasil}}' WA_Sales_Products_2012-14.csv  | sort -nr | awk 'NR<=3 {print $2,$3,$4}'

awk -F ',' '{if($7=='2012' && $1=="United States" && ($4=="Personal Accessories" || $4=="Camping Equipment" || $4=="Outdoor Protection")) p[$6]+=$10} END {for(hasil in p) {print p[hasil],hasil}}' WA_Sales_Products_2012-14.csv | sort -nr | awk 'NR<=3 {print $2,$3,$4}'
